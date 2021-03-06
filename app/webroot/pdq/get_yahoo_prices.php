<?php
/*
	OpenTOMS - Open Trade Order Management System
	Copyright (C) 2012  JOHN TAM, LPR CONSULTING LLP

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/	

/**
 *	Scrape prices from Yahoo Financial
 **/
$limit = 100;	//limit to number of stocks processed at once 
 
//First get stock list from pdq_actives
$mysqli = new mysqli('asapdb01.cqezga1cxvxz.us-east-1.rds.amazonaws.com', 'asapuser', 'templ88', 'ASAPDB01');
$query = "SELECT id, sec_id, sec_type, ric_code FROM pdq_actives 
			WHERE yahoo_done=0 AND (ric_code<>'' AND sec_type=50) 
			ORDER BY id DESC LIMIT $limit";
$result = $mysqli->query($query, MYSQLI_STORE_RESULT);

//Check to see if there are any undone rows for this results cycle. If not then reset yahoo_done flag to 0
//for all rows and rerun the query
if ($result->num_rows == 0) {
	$mysqli->query("UPDATE pdq_actives SET yahoo_done=0");
	$result = $mysqli->query($query, MYSQLI_STORE_RESULT);
}

// set up URL string to query Yahoo
// http://www.seangw.com/wordpress/2010/01/formatting-stock-data-from-yahoo-finance/
// http://www.gummy-stuff.org/Yahoo-data.htm
$secidLookup = array();
$stockList = "";	//sequence of ric codes used in query
$idList = "";	//sequence of row ids used for updating the yahoo_done flag to 1
while($secRow = $result->fetch_array(MYSQLI_ASSOC)) {
	$stockList .= $secRow['ric_code'].",";
	$idList .= $secRow['id'].","; 
	$secidLookup[$secRow['ric_code']] = $secRow['sec_id'];
}
 
$stockList = rtrim($stockList, ",");	//remove trailing comma
$idList = rtrim($idList, ",");
$stockFormat = "sl1d1t1";
$host = "http://finance.yahoo.com/d/quotes.csv";
$requestUrl = $host."?s=".$stockList."&f=".$stockFormat."&e=.csv";

// Pull data (download CSV as file)
$filesize=100000;
$handle = fopen($requestUrl, "r");
$raw = fread($handle, $filesize);
fclose($handle);

// Split results, trim way the extra line break at the end
$quotes = explode("\n",trim($raw));

$values = "";
foreach($quotes as $quoteraw) {
	$quoteraw = str_replace(", I", " I", $quoteraw);	//", Inc" in stock name causes problems because of the comma
	$quote = explode(",", $quoteraw);
		
	if (($quote[0] != '""') && ($quote[2] != '"N/A"')) {
		$secid = $secidLookup[str_replace('"','',$quote[0])];
		$price = $quote[1];
		$dateUS = str_replace('"','',$quote[2]);
		$dateUK = preg_replace('/([0-9]+)\/([0-9]+)\/([0-9]+)/','$2-$1-$3', $dateUS);
		$time = str_replace('"','',$quote[3]);
		//convert Yahoo times (EDT) to BST
		$date = new DateTime($dateUK." ".$time, new DateTimeZone('America/New_York'));
		$date->setTimezone(new DateTimeZone('Europe/London'));
		$dateString = $date->format("Y-m-d H:i:s");
		
		echo $secid.": ".$price."   ".$dateString."</BR>";
		
		//form list of values to be used in the INSERT query below
		$values .= "(".$secid.",2,".$price.",'".$dateString."'),";
	}
}
$values = rtrim($values, ",");

//Insert row into pdq_prices
if (!$mysqli->query("INSERT INTO pdq_prices (sec_id, provider_id, price, price_date) VALUES $values;")) {
	echo "Could not insert row into pdq_actives";
	exit();
}
 
// set the yahoo_done flag against the original list of securities fetched
if (!$mysqli->query("UPDATE pdq_actives SET yahoo_done=1 WHERE id IN (".$idList.")")) {
	echo "Could not mark yahoo done flag in pdq_actives table";
	exit();
}
 
$result->free();
$mysqli->close();
?>

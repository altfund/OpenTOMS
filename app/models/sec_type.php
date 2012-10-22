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

class SecType extends AppModel {
    var $name = 'SecType';
	
	function default_settlement($id) {
		$data = $this->read(null, $id);
	
		if ($data['SecType']['bond'] == 1) {
			return 2;
		}
		else if ($data['SecType']['exchrate'] == 1) {
			return 2;
		}
		else if ($data['SecType']['cfd'] == 1) {
			return 0;
		}
		else {
			return 3;
		}
	}
	
	//set the act flag in the model table
	function status($id, $val) {
		$this->id = $id;
		$this->saveField('act', $val);
	}
}

?>

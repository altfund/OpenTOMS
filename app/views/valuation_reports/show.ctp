<!--
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
-->	

<table style="width: 60%;margin-left:20%;margin-right:20%;">
	<tr>
		<td><h1>Valuation Report</h1></td>
	</tr>
	
	<tr class="high2">
		<td><b><?php echo $valuations[0]['Fund']['fund_name']; ?></b></td>
		<td><b>Report Date: <?php echo $valuations[0]['ValuationReport']['pos_date']; ?></b></td>
		<td>
			<?php echo $this->Form->create('ValuationReport', array('action' => 'index/'.$valuations[0]['ValuationReport']['fund_id'])); ?>
			<?php echo $this->Form->submit('Back To List', array('name'=>'Submit', 'value' => 'Back'));?>
			<?php echo $this->Form->end(); ?>
		</td>
	</tr>
</table>	

<table style="width: 60%;margin-left:20%;margin-right:20%;">	
	<tr>
		<th>Security</th>
		<th>Quantity</th>
		<th>Price</th>
		<th>Market Val (Local)</th>
		<th>Accrued</th>
		<th>Market Val Inc Acc (Local)</th>
		<th>Currency</th>
		<th>FX Rate</th>
		<th>Market Val (<?php echo $fundccyname; ?>)</th>
	</tr>
	
	<?php if (isset($valuations)) { $totmvfund = 0; ?>
	
	<?php foreach ($valuations as $valuation): ?>
		<tr<?php echo $cycle->cycle('', ' class="altrow"');?>>
			<td>
				<?php echo $valuation['Sec']['sec_name']; ?>
			</td>
			<td style="text-align: right;">
				<?php echo number_format($valuation['ValuationReport']['quantity'],2); ?>
			</td>
			<td style="text-align: right;">
				<?php if ($valuation['Sec']['sec_type_id'] > 2) {
						echo number_format($valuation['ValuationReport']['price'],5);
				}?>
			</td>
			<td style="text-align: right;">
				<?php echo number_format($valuation['ValuationReport']['notion_val_local'],2); ?>
			</td>
			<td style="text-align: right;">
				<?php echo number_format($valuation['ValuationReport']['accrued'],2); ?>
			</td>
			<td style="text-align: right;">
				<?php echo number_format($valuation['ValuationReport']['mkt_val_local'],2); ?>
			</td>
			<td style="text-align: right;">
				<?php echo $valuation['Currency']['currency_iso_code']; ?>
			</td>
			<td style="text-align: right;">
				<?php echo number_format($valuation['ValuationReport']['fx_rate'],4); ?>
			</td>
			<td style="text-align: right;">
				<?php echo number_format($valuation['ValuationReport']['mkt_val_fund'],2); 
					$totmvfund += $valuation['ValuationReport']['mkt_val_fund']; ?>
			</td>
		</tr>
	<?php endforeach; ?>
		<tr class="total">
			<td colspan="8"></td>
			<td style="text-align: right;"><?php echo number_format($totmvfund,2); ?></td>
		</tr>
	<?php }; ?>
</table>

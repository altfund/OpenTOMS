<?php if (!empty($fundprices)) { ?>
	<?php foreach ($fundprices as $price): ?>
		<tr<?php echo $cycle->cycle('', ' class="altrow"');?>>
			<td style="width: 15%;">
				<div class="dispdate">
					<?php echo $price['Price']['price_date']; ?>
				</div>
			</td>
			<td style="width: 45%;">
				<?php echo $price['Sec']['sec_name']; ?>
			</td>
			<td style="width: 15%;text-align: right;">
				<div id="dispprice"><?php echo preg_replace('/(\.)(\d*?)(0+)$/', '${1}${2}0',$price['Price']['price']); ?></div>
				<input type="text" class="editprice" value="<?php echo preg_replace('/(\.)(\d*?)(0+)$/', '${1}${2}0',$price['Price']['price']); ?>" />
			</td>
			<td style="width: 10%;text-align: center;">
				<div id="dispfinal"><?php if ($price['Price']['final'] == 1) { echo 'Yes';} else { echo 'No';} ?></div>
				<select class="editfinal">
				  <option value="1" <?php if ($price['Price']['final']==1) { echo 'selected="selected"'; } ?>>Yes</option>
				  <option value="0" <?php if ($price['Price']['final']==0) { echo 'selected="selected"'; } ?>>No</option>
				</select>
			</td>
			<td style="text-align: center;">
				<?php 
					echo $this->Html->image('edit.png', array('class'=>'editbutton', 'id' => 'edit_'.$price['Price']['id']));
					echo $this->Html->image('save.png', array('class'=>'savebutton', 'type'=>'hidden', 'id' => 'save_'.$price['Price']['id']));
					echo $this->Html->image('cancel.png', array('class'=>'cancelbutton', 'type'=>'hidden', 'id' => 'cancel_'.$price['Price']['id']));
				 ?>
				<input type="text" style="display: none;" class="priceid" value="<?php echo $price['Price']['id']; ?>" />
				<input type="text" style="display: none;" class="secid" value="<?php echo $price['Sec']['id']; ?>" />
			</td>
		</tr>
<?php endforeach;} ?>
	

<script type="text/javascript">
	$(document).ready(function() {
		$('.editprice').hide();
		$('.editfinal').hide();
		$('.savebutton').hide();
		$('.cancelbutton').hide();
		
		$('.editbutton').click(function() {
			var top = $(this).closest('tr');
			$(top).find('.editprice').show();
			$(top).find('.editfinal').show();
			$(top).find('.savebutton').show();
			$(top).find('.cancelbutton').show();
			$(top).find('.editbutton').hide();
			$(top).find('#dispprice').hide();
			$(top).find('#dispfinal').hide();
		});
		
		$('.savebutton').click(function() {
			var top = $(this).closest('tr');
			var price = $(top).find('.editprice').val();
			var final = $(top).find('.editfinal').val();
			var finaltext = $(top).find('.editfinal option:selected').text();
			var priceid = $(top).find('.priceid').val();
			var secid = $(top).find('.secid').val();
			var pricedate = $(top).find('.dispdate').html();
			$(top).addClass('highred');
			
			//send this to database
			$.post("/prices/ajax_edit?" + (new Date()).getTime(),
			{ secid : secid , pricedate : pricedate , price : price , final : final , id : priceid },
			function(data) {
				if (data.length > 0) {					
					if (data == "Y") {
						//saved ok
						$(top).find('#dispprice').html(price);
						$(top).find('#dispfinal').html(finaltext);
						$(top).find('.editprice').hide();
						$(top).find('.editfinal').hide();
						$(top).find('.savebutton').hide();
						$(top).find('.cancelbutton').hide();
						$(top).find('.editbutton').show();
						$(top).find('#dispprice').show();
						$(top).find('#dispfinal').show();
					}
					else {
						alert(data);
					}
				}
				$(top).removeClass('highred');
			},
			"text"
			);
		});
		
		$('.cancelbutton').click(function() {
			//cancel edit
			var top = $(this).closest('tr');
			$(top).find('.editprice').hide();
			$(top).find('.editfinal').hide();
			$(top).find('.savebutton').hide();
			$(top).find('.cancelbutton').hide();
			$(top).find('.editbutton').show();
			$(top).find('#dispprice').show();
			$(top).find('#dispfinal').show();
		});
	});
</script>
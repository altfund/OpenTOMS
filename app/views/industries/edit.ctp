<!-- File: /app/views/industries/edit.ctp -->

<table style="width: 50%; margin-left: 25%; margin-right: 25%;">
	<tr>
		<td colspan="3">
			<h1>Edit Industry</h1>		
		</td>
	</tr>
	
	<tr class="highlight">
		<td>Industry Code</td>
		<td>Industry Name</td>
	</tr>
	
		<tr>
			<?php echo $this->Form->create(null, array('action' => 'edit')); ?>
			<td><?php echo $this->Form->input('industry_code', array('label'=>false)); ?></td>
			<td><?php echo $this->Form->input('industry_name', array('label'=>false)); ?></td>
			<td><?php
				echo $this->Form->input('id', array('type' => 'hidden')); 
				echo $this->Form->end('Update Industry');
			?></td>
		</tr>
</table>


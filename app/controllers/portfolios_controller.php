<?php
class PortfoliosController extends AppController {
	var $name = 'Portfolios';
	
	function index() {
		$portfolio_data = $this->Session->read('portfolio_data');	
		$this->set('portfolio_data', $portfolio_data);
	}
}

?>
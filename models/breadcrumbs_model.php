<?php

class Breadcrumbs_model extends Model {

    var $title   = '';
    var $content = '';
    var $date    = '';
    private $pagesTable = "pages";
    
    function __construct()
    {
        // Call the Model constructor
        parent::Model();
    }
    
    function get_page($id=false,$controller=false,$action=false)
    {
    	if ($action=="index")$action=false;
    	if ($id) {
        	$query = $this->db->get_where($this->pagesTable, array('id' => $id));
    	}
    	else {
    		if ($action) {
    			$query = $this->db->get_where($this->pagesTable, array('controller' => $controller,
        													   	       'view'       => $action,
        													          ));
    		}
    		else {
    			$query = $this->db->get_where($this->pagesTable, array('controller' => $controller));
    		}
    	}
        return $query->row();
    }

}

?>
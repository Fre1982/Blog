<?php

/**
 * default.php
 *
 * default application controller
 *
 * @package		TinyMVC
 * @author		Monte Ohrt
 */

class Default_Controller extends TinyMVC_Controller
{
  function index()
  {
    $this->load->model('Post_Model','Post');
    $result["posts"] = $this->Post->getAllPosts();



    $this->view->display('blog_view', $result);
  }
}

?>

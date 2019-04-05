<?php

/**
 *
 */
class Page_Controller extends TinyMVC_Controller
{

  function index()
  {
//    return this->models->Page_Model->getAllPosts();
    $this->load->model('Page_model','page')
    $result = $this->page->getAllPosts();
    $this->view->display('blog_view',$result);
  }
}

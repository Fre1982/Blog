<?php
class Read_Post_Controller extends TinyMVC_Controller
{
    function index(){
        $this->load->model('Post_Model','page');

        $data['title'] = $this->page->get_title();
        $data['user'] = $this->user->get_user(1)["name"];
        $data['body'] = $this->user->get_user(1)["name"];
        var_dump($data['body']);

        $this->view->display('read_post_view', $data);
    }
}
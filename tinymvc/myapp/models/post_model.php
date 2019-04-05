<?php

/**
 *
 */
class Post_Model extends TinyMVC_Model
{

  function getAllPosts()
  {
    $this->db->select('*'); // set selected columns
    $this->db->from('posts');  // set from what table(s)
    $this->db->query();
    while($row = $this->db->next()) {
      $rows[] = $row;
    }
    return $rows;
  }
}

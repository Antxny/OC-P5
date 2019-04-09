<?php

require_once('model/PostManager.php');

function listHomePosts(){

    $postManager = new PostManager();
    $posts = $postManager->getHomePosts();

    require('view/frontend/homeView.php');

}
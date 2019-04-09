<?php

require_once('model/PostManager.php');

function listHomePosts(){

    $postManager = new PostManager();
    $posts = $postManager->getHomePosts();

    require('view/frontend/homeView.php');

}

function listAllPosts(){

    $postManager = new PostManager();
    $posts = $postManager->getAllPosts();

    require('view/frontend/listPostsView.php');

}

function post(){

    $postManager = new PostManager();
    $commentManager = new CommentManager();

    require('view/frontend/postView.php');

}

function addPost($author, $title, $content){

    $postManager = new PostManager();

    $affectedLines = $postManager->addPost($author, $title, $content);

    if ($affectedLines === false) {

        throw new Exception("Impossible d'ajouter l'article !");

    } 

}

function deletePost(){

    $postManager = new PostManager();
    $postdelete = $postManager->deletePost($_GET['id']);

    header('Location: index.php?action=listPosts');

}
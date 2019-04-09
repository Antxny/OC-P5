<?php

require_once('model/PostManager.php');
require_once('model/CommentManager.php');

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

    $post = $postManager->getPost($_GET['id']);
    $comments = $commentManager->getComments($_GET['id']);

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

function submitComment($postId, $author, $comment){

    $commentManager = new CommentManager();

    $affectedLines = $commentManager->addComment($postId, $author, $comment);

    if ($affectedLines === false) {

        throw new Exception("Impossible d'ajouter le commentaire !");

    } else {

        header('Location: index.php?action=post&id=' . $postId);

    }
}

function approveComment(){

    $commentManager = new CommentManager();
    $commentapprove = $commentManager->approveComment($_GET['id']);

    header('Location: index.php?action=manageComments');

}

function disapproveComment(){

    $commentManager = new CommentManager();
    $commentdelete = $commentManager->disapproveComment($_GET['id']);

    header('Location: index.php?action=manageComments');

}

function manageComments(){

    $commentManager = new CommentManager(); // Création d'un objet
    $comments = $commentManager->getAllComments(); 

    require('view/frontend/commentsPannelView.php');
    
}
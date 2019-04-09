<?php 

$title = $post['title'];
$description = '';
$page = 'blog';

?>

<?php ob_start(); ?>

<div class="post-header-image" style="background-image: url(public/img/blog/thumbnails/<?= $post['id'] ?>.jpg)"></div>
<a href="index.php" class="btn-back-posts offset-md-3"><i class="far fa-chevron-left"></i> Retour à la liste des articles</a>
<hr class="col-md-6 mx-auto">
<div class="post-view col-md-6">
    <?php if (isset($_SESSION['id']) AND $_SESSION['rank'] == 2): ?>
    <div class="admin-tools">
        <a href="index.php?action=deletePost&amp;id=<?= $post['id'] ?>" class="tool-delete"><i class="far fa-trash"></i> Supprimer l'article</a>
        <a href="index.php?action=editPost&amp;id=<?= $post['id'] ?>" class="tool-edit"><i class="fal fa-marker"></i> Modifier l'article</a>
    </div>
    <?php endif ?>
</div>
<div class="post-view col-md-6">
    <h1 class="title"><?= htmlspecialchars($post['title']) ?></h1>
    <span>Par <?= htmlspecialchars($post['author']) ?> • le <?= strftime("%d %B %Y à %Hh%M", strtotime($post['creation_date'])) ?></span>
    <div class="content">
        <p><?= nl2br(htmlspecialchars($post['content'])) ?></p>
    </div>
    <span class="last-update">Dernière modification : <?= strftime("%d %B %Y à %Hh%M", strtotime($post['update_date'])) ?></span>
</div>

<?php $content = ob_get_clean(); ?>

<?php require('template.php'); ?>
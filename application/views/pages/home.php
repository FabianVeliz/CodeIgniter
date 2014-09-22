<div class="mainContent">

	<h1>News</h1>
	<ul>
		
		<?php foreach ($articles AS $article): ?>
			<li>
				<h2><?php echo $article->article_name; ?></h2>
				<div class="text"><?php echo $article->article_content; ?></div>
				<h4><?php echo $article->article_date; ?></h4>
			</li>
		<?php endforeach; ?>

	</ul>
	
</div>
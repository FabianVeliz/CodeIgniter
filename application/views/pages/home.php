<div class="container">

	<h1>News</h1>
	<ul>
		
		<?php foreach ($articles AS $article): 
			$url = '/article/'.$article->article_url;
		?>

			<li>
				<h2>
					<a href="<?= $url; ?>"><?php echo $article->article_name; ?></a>
				</h2>
				<div class="text"><?php echo $article->article_content; ?></div>
				<h4><?php echo $article->article_date; ?></h4>
			</li>
			
		<?php endforeach; ?>

	</ul>
	
</div>
	

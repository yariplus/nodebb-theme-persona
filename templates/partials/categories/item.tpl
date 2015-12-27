<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="col-md-7 col-sm-9 col-xs-12 content">
		<div class="icon pull-left" style="{function.generateCategoryBackground}">
			<i class="fa fa-fw {../icon}"></i>
		</div>

		<h2 class="title">
			<!-- IMPORT partials/categories/link.tpl --><br />
			<span class="description">
			{../descriptionParsed}
			</span>
		</h2>
		<span class="visible-xs pull-right">
			<a class="permalink" href="{../teaser.url}">
				<small class="timeago" title="{../teaser.timestampISO}"></small>
			</a>
		</span>
	</div>

	<!-- IF !categories.link -->
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span><br />
		<small>[[global:topics]]</small>
	</div>
	<div class="col-md-1 hidden-sm hidden-xs stats">
		<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span><br />
		<small>[[global:posts]]</small>
	</div>
	<div class="col-md-3 col-sm-3 teaser hidden-xs">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	<!-- ENDIF !categories.link -->

	<!-- IF categories.children.length --><br><!-- ENDIF categories.children.length -->

	<!-- BEGIN categories.children -->
		<div class="col-md-7 col-sm-9 col-xs-11 content">
			<div class="icon-small pull-left" style="{function.generateCategoryBackground}">
				<i class="fa fa-fw {../icon}"></i>
			</div>

			<h4 class="title">
				<!-- IMPORT partials/categories/link.tpl --><br />
				{../descriptionParsed}
			</h4>
		</div>

		<!-- IF !categories.children.link -->
		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span><br />
			<small>[[global:topics]]</small>
		</div>
		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span><br />
			<small>[[global:posts]]</small>
		</div>
		<div class="col-md-3 col-sm-3 col-xs-1 teaser hidden-xs">
			<!-- TEMP -->
			<div class="card" style="border-color: {../bgColor}">
				<!-- BEGIN posts -->
				<!-- IF @first -->
				<div component="category/posts">
					<p>
						<a href="{config.relative_path}/user/{../user.userslug}">
							<!-- IF ../user.picture -->
							<img class="user-img" alt="{../user.username}" src="{../user.picture}" />
							<!-- ELSE -->
							<span class="user-icon user-img" title="{../user.username}" style="background-color: {../user.icon:bgColor};">{../user.icon:text}</span>
							<!-- ENDIF ../user.picture -->
						</a>
						<a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
							<small class="timeago" title="{../timestamp}"></small>
						</a>
					</p>
					<div class="post-content">
						{../content}
					</div>
				</div>
				<!-- ENDIF @first -->
				<!-- END posts -->

				<!-- IF !categories.children.posts.length -->
				<div component="category/posts">
					<div class="post-content">
						[[category:no_new_posts]]
					</div>
				</div>
				<!-- ENDIF !categories.children.posts.length -->
			</div>
			<!-- TEMP -->
		</div>
		<!-- ENDIF !categories.children.link -->
	<!-- END categories.children -->
</li>
<hr>

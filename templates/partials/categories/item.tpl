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

	<!-- IF !../link -->
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
	<!-- ENDIF !../link -->

	<!-- IF ../children.length -->
	<br>
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

		<!-- IF !../link -->
		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span><br />
			<small>[[global:topics]]</small>
		</div>
		<div class="col-md-1 hidden-sm hidden-xs stats">
			<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span><br />
			<small>[[global:posts]]</small>
		</div>
		<div class="col-md-3 col-sm-3 col-xs-1 teaser hidden-xs">
			<!-- IMPORT partials/categories/lastpost.tpl -->
		</div>
	<!-- END categories.children -->

	<!-- ENDIF ../children.length -->
</li>
<hr>

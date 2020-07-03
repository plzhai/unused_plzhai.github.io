---
layout: blog
pageClass: page-type-post
---

<div class="trace">/ <a href="/blog/">{{ site.blog.name }}</a> / <a href="{{ page.url }}">{{ page.title }}</a></div>

<article>
	<h1>{{ page.title }}</h1>
	{% assign post = page %}
	{% include meta.tpl %}
	{{ content }}
	{% capture permaurl %}{{site.origin}}{{ page.url }}{% endcapture %}
	<p class="permalink">永久链接：<a href="{{ permaurl }}">{{ permaurl }}</a></p>
</article>

<div id="gitmentContainer"></div>
<link rel="stylesheet" href="https://imsun.github.io/gitment/style/default.css">
<script src="https://imsun.github.io/gitment/dist/gitment.browser.js"></script>
<script>
var gitment = new Gitment({
    owner: 'plzhai',
    repo: 'plzhai.github.io',
    oauth: {
        client_id: '007213f1b841dffdb129',
        client_secret: 'e778234eb15d539be4898370399a8a12a866ebc1',
    },
});
gitment.render('gitmentContainer');
</script>

<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-7015804927845255"
     data-ad-slot="7629180734"
     data-ad-format="auto"></ins>

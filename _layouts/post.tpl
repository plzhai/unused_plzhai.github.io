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
</article>
<!--
<div id="disqus_thread" class="comments"></div>
-->

<!-- 来必力City版安装代码 -->
<div id="lv-container" data-id="city" data-uid="MTAyMC81MDg4My8yNzM2NQ==">
	<script type="text/javascript">
   (function(d, s) {
       var j, e = d.getElementsByTagName(s)[0];

       if (typeof LivereTower === 'function') { return; }

       j = d.createElement(s);
       j.src = 'https://cdn-city.livere.com/js/embed.dist.js';
       j.async = true;

       e.parentNode.insertBefore(j, e);
   })(document, 'script');
	</script>
<noscript> 为正常使用来必力评论功能请激活JavaScript</noscript>
</div>
<!-- City版安装代码已完成 -->

<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-7015804927845255"
     data-ad-slot="7629180734"
     data-ad-format="auto"></ins>

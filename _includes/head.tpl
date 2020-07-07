<head>
<title>{% if page.title %}{{ page.title }} - {% endif %}{{ site.name }}</title>
<meta charset="utf-8" />
<meta name="description" content="{{ site.description }}">
<meta name="keywords"  content="{{ site.keyword }}">
<meta name="author" content="{{ site.meta.author.name }}" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="icon" href="/favicon.png" type="image/x-icon" />
<link rel="shortcut icon" href="/favicon.png" type="image/x-icon" />
<link href="https//{{ site.host }}/blog/feed.xml" rel="alternate" title="{{ site.blog.name }}" type="application/atom+xml" />
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="/assets/css/common.css" />
{% for style in layout.styles %}<link rel="stylesheet" type="text/css" href="{{ style }}" />
{% endfor %}
{% for style in page.styles %}<link rel="stylesheet" type="text/css" href="{{ style }}" />
{% endfor %}
<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({
    tex2jax: {
      skipTags: ['script', 'noscript', 'style', 'textarea', 'pre'],
      inlineMath: [['$','$']]
    }
  });
</script>
{% include baidu-stats.tpl %}
</head>

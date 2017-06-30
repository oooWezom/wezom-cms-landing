<?php use Core\HTML; ?>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo isset($title) ? $title : NULL; ?></title>
<meta name="description" lang="ru-ru" content="<?php echo isset($description) ? $description : NULL; ?>">
<meta name="keywords" lang="ru-ru" content="<?php echo isset($keywords) ? $keywords : NULL; ?>">
<!-- www.wezom.com.ua -->
<!-- elit-web -->
<!-- no description -->

<!-- Open Graph -->
<meta property="og:title" content="<?php echo isset($title) ? $title : NULL; ?>">
<meta property="og:type" content="website">
<meta property="og:site_name" content="<?php echo $_SERVER['HTTP_HOST']?>">
<meta property="og:image" content="<?php echo \Core\HTML::media('css/pic/logo.png')?>">
<meta property="og:url" content="<?php echo \Core\HTML::link($_SERVER['REQUEST_URI'], true); ?>">
<meta property="og:description" content="<?php echo isset($description) ? $description : NULL; ?>">

<!-- Touch -->
<meta name="format-detection" content="telephone=no">
<meta name="format-detection" content="address=no">

<!-- Responsive -->
<meta name="HandheldFriendly" content="True">
<meta name="MobileOptimized" content="320">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="viewport" content="target-densitydpi=device-dpi">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicons -->
<link rel="apple-touch-icon" sizes="180x180" href="<?php echo HTML::media('favicons/apple-touch-icon.png?v=12d334'); ?>">
<link rel="icon" type="image/png" href="<?php echo HTML::media('favicons/favicon-32x32.png?v=12d334'); ?>" sizes="32x32">
<link rel="icon" type="image/png" href="<?php echo HTML::media('favicons/favicon-16x16.png?v=12d334'); ?>" sizes="16x16">
<link rel="manifest" href="<?php echo HTML::media('favicons/manifest.json?v=12d334'); ?>">
<link rel="mask-icon" href="<?php echo HTML::media('favicons/safari-pinned-tab.svg?v=12d334'); ?>" color="#5bbad5">
<link rel="shortcut icon" href="<?php echo HTML::media('favicons/favicon.ico?v=12d334'); ?>">
<meta name="msapplication-config" content="<?php echo HTML::media('favicons/browserconfig.xml?v=12d334'); ?>">
<meta name="theme-color" content="#ffffff">

<style>html{font-family:Roboto,Arial,Helvetica,sans-serif;line-height:1.15;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;font-size:100%}body{margin:0}section{display:block}a{background-color:transparent;-webkit-text-decoration-skip:objects}img{border-style:none}svg:not(:root){overflow:hidden}input{font-family:Roboto,Arial,Helvetica,sans-serif;font-size:100%;line-height:1.15;margin:0}input{overflow:visible}::-webkit-file-upload-button{-webkit-appearance:button;font:inherit}input::-ms-clear{display:none;width:0;height:0}input::-ms-reveal{display:none;width:0;height:0}html{position:relative;height:100%;font-size:10px;font-family:Roboto,Arial,Helvetica,sans-serif;font-weight:400}*,:after,:before{box-sizing:inherit}a{color:#43f}body{position:relative;height:100%;box-sizing:border-box;min-width:320px}img{max-width:100%;height:auto}::-ms-selection{text-shadow:none;color:#fff;background:#2597ff}input{box-shadow:none}input::-webkit-input-placeholder{color:#999}input::-moz-placeholder{color:#999;opacity:.5}input:-ms-input-placeholder{color:#999}.view-wrapper{position:relative;min-height:100%;overflow:hidden}.view-size{position:relative;max-width:1240px;padding:0 1.5rem;margin:0 auto}.view-size:after{content:'';clear:both;display:block;height:0}.view-size--big{max-width:1660px}.view-section{position:relative}.title{line-height:3rem;font-weight:300;color:#000;font-family:Roboto,Arial,Helvetica,sans-serif;font-size:2.5rem;margin:1.2em 0 3.5rem}.title--big{font-weight:700;font-size:3rem}.title:first-child{margin-top:0}.button{padding:0 4.4rem;border:2px solid #fff;box-sizing:border-box;line-height:3.1rem;text-align:center;border-radius:3.5rem;height:3.5rem;display:inline-block;vertical-align:top;text-decoration:none;background:0 0;outline:0!important}.button span{text-transform:uppercase;color:#fff;font-size:.9rem;line-height:1.5rem;display:inline-block;vertical-align:middle;font-weight:700}.button--svg{padding:0 3rem}.button--svg svg{display:inline-block;vertical-align:middle;fill:#fff;margin-left:25px}.button--lock svg{height:21px;width:17px}.button--arrow svg{height:29px;width:16px}.button--mb10{margin-bottom:10px}.grid{display:-webkit-box;display:flex;flex-wrap:wrap}.grid--space-def{margin-left:-10px;margin-right:-10px}.grid--space-def>.gcell{padding-left:10px;padding-right:10px}.grid>.gcell{display:inline-block}.grid>.gcell--12{width:100%;max-width:100%;flex-basis:100%}.screen1{height:680px;background:url(/Media/images/top.jpg) no-repeat top center;background-size:cover;position:relative;padding-top:85px;box-sizing:border-box}.screen1-title{font-family:Roboto,Arial,Helvetica,sans-serif;font-weight:100;font-size:5rem;line-height:4.5rem;color:#fff;font-style:normal;margin-bottom:2rem}.screen1-slogan{color:#fff;font-size:1.5rem;line-height:2rem;font-family:Cambria,Arial,Helvetica,sans-serif;max-width:525px;margin-bottom:2.8rem}.left-size{max-width:715px;width:55%}.logo{line-height:0;display:block;padding-bottom:70px;position:relative;margin-bottom:25px}.logo:after{position:absolute;content:'';bottom:0;left:0;height:2px;width:100px;background:#fff}.monitors{position:absolute;right:0;top:0;width:52.5%}.monitors .monitor1{left:0;top:200px;position:absolute;line-height:0;max-width:44%;opacity:0;-webkit-transform:translate(50%,0);transform:translate(50%,0)}.monitors .monitor2{right:0;top:0;position:absolute;line-height:0;max-width:65%;opacity:0;-webkit-transform:translate(50%,0);transform:translate(50%,0)}.monitors .graf1{position:absolute;right:45%;top:130px;line-height:0;max-width:33%;opacity:0;-webkit-transform:translate(50%,0);transform:translate(50%,0)}.monitors .graf2{position:absolute;right:0;top:150px;line-height:0;max-width:40%;opacity:0;-webkit-transform:translate(50%,0);transform:translate(50%,0)}.monitors .graf3{position:absolute;right:30%;top:280px;line-height:0;max-width:41%;opacity:0;-webkit-transform:translate(50%,0);transform:translate(50%,0)}.screen2{padding:100px 0 80px;box-sizing:border-box}.about{margin-bottom:70px}.about-block{position:relative;width:100%;height:220px;border:1px solid #e7e8eb;box-sizing:border-box;border-radius:7px;line-height:220px;margin-bottom:20px;text-align:center;background:#fff}.about-block--green{border:1px solid #8aba64;background:#8aba64}.scroll_up{position:fixed;height:40px;width:40px;bottom:5px;right:5px;text-align:center;line-height:40px;z-index:2;display:none;border-radius:40px;background:#fff;border:1px solid transparent;z-index:99999}.scroll_up svg{width:20px;height:20px;display:inline-block;vertical-align:middle;line-height:20px;fill:#000}.screen1 .button{width:100%;text-align:center;max-width:370px}@media only screen and (min-width:768px){html{font-size:14px}.grid>.gcell--md-4{width:33.3333333%;max-width:33.3333333%;flex-basis:33.3333333%}}@media only screen and (min-width:1280px){html{font-size:16px}}@media only screen and (max-width:1024px){.monitors{display:none}.left-size{max-width:100%;width:100%}.screen1{height:auto;padding:30px 0}.screen1-slogan{max-width:100%}.screen2{padding:30px 0}.about{margin-bottom:30px}}@media only screen and (max-width:414px){.screen1-title{font-size:3rem;line-height:4rem}.logo{padding-bottom:30px}.about-block{height:150px;line-height:150px;margin-bottom:10px}.screen1 .button{width:100%}}</style>

<!-- localstorage-test.js -->
<script>"use strict";!function(win){function testLocal(testKey){try{return localStorage.setItem(testKey,testKey),localStorage.removeItem(testKey),!0}catch(e){return!1}}win.localSupport=testLocal("test-key"),win.localWrite=function(key,val){try{localStorage.setItem(key,val)}catch(e){if(e==QUOTA_EXCEEDED_ERR)return!1}}}(window);</script>
<!-- svg4everybody.js -->
<script>!function(a,b){"function"==typeof define&&define.amd?define([],function(){return a.svg4everybody=b()}):"object"==typeof exports?module.exports=b():a.svg4everybody=b()}(this,function(){function a(a,b){if(b){var c=document.createDocumentFragment(),d=!a.getAttribute("viewBox")&&b.getAttribute("viewBox");d&&a.setAttribute("viewBox",d);for(var e=b.cloneNode(!0);e.childNodes.length;)c.appendChild(e.firstChild);a.appendChild(c)}}function b(b){b.onreadystatechange=function(){if(4===b.readyState){var c=b._cachedDocument;c||(c=b._cachedDocument=document.implementation.createHTMLDocument(""),c.body.innerHTML=b.responseText,b._cachedTarget={}),b._embeds.splice(0).map(function(d){var e=b._cachedTarget[d.id];e||(e=b._cachedTarget[d.id]=c.getElementById(d.id)),a(d.svg,e)})}},b.onreadystatechange()}function c(c){function d(){for(var c=0;c<l.length;){var g=l[c],h=g.parentNode;if(h&&/svg/i.test(h.nodeName)){var i=g.getAttribute("xlink:href");if(e&&(!f.validate||f.validate(i,h,g))){h.removeChild(g);var m=i.split("#"),n=m.shift(),o=m.join("#");if(n.length){var p=j[n];p||(p=j[n]=new XMLHttpRequest,p.open("GET",n),p.send(),p._embeds=[]),p._embeds.push({svg:h,id:o}),b(p)}else a(h,document.getElementById(o))}}else++c}k(d,67)}var e,f=Object(c),g=/\bTrident\/[567]\b|\bMSIE (?:9|10)\.0\b/,h=/\bAppleWebKit\/(\d+)\b/,i=/\bEdge\/12\.(\d+)\b/;e="polyfill"in f?f.polyfill:g.test(navigator.userAgent)||(navigator.userAgent.match(i)||[])[1]<10547||(navigator.userAgent.match(h)||[])[1]<537;var j={},k=window.requestAnimationFrame||setTimeout,l=document.getElementsByTagName("use");e&&d()}return c});</script>
<script>document.addEventListener("DOMContentLoaded", function() { svg4everybody({}); });</script>

<!-- saved from url=(0014)about:internet -->
<!--[if IE]><meta http-equiv="imagetoolbar" content="no"><![endif]-->
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->


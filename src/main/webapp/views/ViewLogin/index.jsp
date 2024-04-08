<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Đăng Nhập</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="images/icons/favicon.ico" />

<link rel="stylesheet" type="text/css" href="/Web_Assignment/views/ViewLogin/vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="/Web_Assignment/views/ViewLogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="/Web_Assignment/views/ViewLogin/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">

<link rel="stylesheet" type="text/css" href="/Web_Assignment/views/ViewLogin/vendor/animate/animate.css">

<link rel="stylesheet" type="text/css" href="/Web_Assignment/views/ViewLogin/vendor/css-hamburgers/hamburgers.min.css">

<link rel="stylesheet" type="text/css" href="/Web_Assignment/views/ViewLogin/vendor/animsition/css/animsition.min.css">

<link rel="stylesheet" type="text/css" href="/Web_Assignment/views/ViewLogin/vendor/select2/select2.min.css">

<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">

<link rel="stylesheet" type="text/css" href="/Web_Assignment/views/ViewLogin/css/util.css">
<link rel="stylesheet" type="text/css" href="/Web_Assignment/views/ViewLogin/css/main.css">

<meta name="robots" content="noindex, follow">
<script nonce="7bc759e6-3ec1-428c-a913-76465575c015">try{(function(w,d){!function(b,c,d,e){b[d]=b[d]||{};b[d].executed=[];b.zaraz={deferred:[],listeners:[]};b.zaraz.q=[];b.zaraz._f=function(f){return async function(){var g=Array.prototype.slice.call(arguments);b.zaraz.q.push({m:f,a:g})}};for(const h of["track","set","debug"])b.zaraz[h]=b.zaraz._f(h);b.zaraz.init=()=>{var i=c.getElementsByTagName(e)[0],j=c.createElement(e),k=c.getElementsByTagName("title")[0];k&&(b[d].t=c.getElementsByTagName("title")[0].text);b[d].x=Math.random();b[d].w=b.screen.width;b[d].h=b.screen.height;b[d].j=b.innerHeight;b[d].e=b.innerWidth;b[d].l=b.location.href;b[d].r=c.referrer;b[d].k=b.screen.colorDepth;b[d].n=c.characterSet;b[d].o=(new Date).getTimezoneOffset();if(b.dataLayer)for(const o of Object.entries(Object.entries(dataLayer).reduce(((p,q)=>({...p[1],...q[1]})),{})))zaraz.set(o[0],o[1],{scope:"page"});b[d].q=[];for(;b.zaraz.q.length;){const r=b.zaraz.q.shift();b[d].q.push(r)}j.defer=!0;for(const s of[localStorage,sessionStorage])Object.keys(s||{}).filter((u=>u.startsWith("_zaraz_"))).forEach((t=>{try{b[d]["z_"+t.slice(7)]=JSON.parse(s.getItem(t))}catch{b[d]["z_"+t.slice(7)]=s.getItem(t)}}));j.referrerPolicy="origin";j.src="../../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(b[d])));i.parentNode.insertBefore(j,i)};["complete","interactive"].includes(c.readyState)?zaraz.init():b.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document)}catch(e){throw fetch("/cdn-cgi/zaraz/t"),e;};</script></head>
<body style="background-color: #666666;">
<div class="limiter">
<div class="container-login100">
<div class="wrap-login100">
<form class="login100-form validate-form" action="/Web_Assignment/login" method="post" class="register-form">
	<span class="login100-form-title p-b-43">
		Login to continue
	</span>
	<h3>${erro}</h3>
	<div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
		<input class="input100" type="text" name="email">
		<span class="focus-input100"></span>
		<span class="label-input100">Email</span>
	</div>
	<div class="wrap-input100 validate-input" data-validate="Password is required">
		<input class="input100" type="password" name="pass">
		<span class="focus-input100"></span>
		<span class="label-input100">Password</span>
		</div>
	<div class="flex-sb-m w-full p-t-3 p-b-32">
		<div class="contact100-form-checkbox">
			<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
			<label class="label-checkbox100" for="ckb1">
				Remember me
			</label>
		</div>
	<div>
				<a href="#" class="txt1">
					Forgot Password?
				</a>
			</div>
		</div>
		<div class="container-login100-form-btn">
			<button class="login100-form-btn">
				Login
			</button>
		</div>
		<div class="text-center p-t-46 p-b-20">
			<span class="txt2">
				<a href="/Web_Assignment/register">Signin</a>
			</span>
		</div>
		<div class="login100-form-social flex-c-m">
			<a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
				<i class="fa fa-facebook-f" aria-hidden="true"></i>
			</a>
			<a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
				<i class="fa fa-twitter" aria-hidden="true"></i>
			</a>
		</div>
	</form>
<div class="login100-more" style="background-image: url('https://topquangbinh.vn/wp-content/uploads/2021/04/Muong-Thanh-luxury-NL-1-7.jpg');">
</div>
</div>
</div>
</div>

<script src="/Web_Assignment/views/ViewLogin/vendor/jquery/jquery-3.2.1.min.js"></script>

<script src="/Web_Assignment/views/ViewLogin/vendor/animsition/js/animsition.min.js"></script>

<script src="/Web_Assignment/views/ViewLogin/vendor/bootstrap/js/popper.js"></script>
<script src="/Web_Assignment/views/ViewLogin/vendor/bootstrap/js/bootstrap.min.js"></script>

<script src="/Web_Assignment/views/ViewLogin/vendor/select2/select2.min.js"></script>

<script src="/Web_Assignment/views/ViewLogin/vendor/daterangepicker/moment.min.js"></script>
<script src="/Web_Assignment/views/ViewLogin/vendor/daterangepicker/daterangepicker.js"></script>

<script src="/Web_Assignment/views/ViewLogin/vendor/countdowntime/countdowntime.js"></script>

<script src="/Web_Assignment/views/ViewLogin/js/main.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317" integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA==" data-cf-beacon='{"rayId":"870c894f0b744079","b":1,"version":"2024.3.0","token":"cd0b4b3a733644fc843ef0b185f98241"}' crossorigin="anonymous"></script>
</body>

<!-- Mirrored from colorlib.com/etc/lf/Login_v18/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Apr 2024 19:48:46 GMT -->
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preview.colorlib.com/theme/direngine/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 18 Mar 2024 18:03:33 GMT -->

<head>
	<title>DirEngine - Free Bootstrap 4 Template by Colorlib</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/open-iconic-bootstrap.min.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/animate.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/owl.carousel.min.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/magnific-popup.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/aos.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/ionicons.min.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/bootstrap-datepicker.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/jquery.timepicker.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/flaticon.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/icomoon.css">
	<link rel="stylesheet" href="/Web_Assignment/views/UserView/css/style.css">
	<script
		nonce="f65ec595-0cd0-4dd3-8003-47dc424589a7">try {(function (w, d) {!function (o, p, q, r) {o[q] = o[q] || {}; o[q].executed = []; o.zaraz = {deferred: [], listeners: []}; o.zaraz.q = []; o.zaraz._f = function (s) {return async function () {var t = Array.prototype.slice.call(arguments); o.zaraz.q.push({m: s, a: t})}}; for (const u of ["track", "set", "debug"]) o.zaraz[u] = o.zaraz._f(u); o.zaraz.init = () => {var v = p.getElementsByTagName(r)[0], w = p.createElement(r), x = p.getElementsByTagName("title")[0]; x && (o[q].t = p.getElementsByTagName("title")[0].text); o[q].x = Math.random(); o[q].w = o.screen.width; o[q].h = o.screen.height; o[q].j = o.innerHeight; o[q].e = o.innerWidth; o[q].l = o.location.href; o[q].r = p.referrer; o[q].k = o.screen.colorDepth; o[q].n = p.characterSet; o[q].o = (new Date).getTimezoneOffset(); if (o.dataLayer) for (const B of Object.entries(Object.entries(dataLayer).reduce(((C, D) => ({...C[1], ...D[1]})), {}))) zaraz.set(B[0], B[1], {scope: "page"}); o[q].q = []; for (; o.zaraz.q.length;) {const E = o.zaraz.q.shift(); o[q].q.push(E)} w.defer = !0; for (const F of [localStorage, sessionStorage]) Object.keys(F || {}).filter((H => H.startsWith("_zaraz_"))).forEach((G => {try {o[q]["z_" + G.slice(7)] = JSON.parse(F.getItem(G))} catch {o[q]["z_" + G.slice(7)] = F.getItem(G)} })); w.referrerPolicy = "origin"; w.src = "../../cdn-cgi/zaraz/sd0d9.js?z=" + btoa(encodeURIComponent(JSON.stringify(o[q]))); v.parentNode.insertBefore(w, v)};["complete", "interactive"].includes(p.readyState) ? zaraz.init() : o.addEventListener("DOMContentLoaded", zaraz.init)}(w, d, "zarazData", "script");})(window, document)} catch (e) {throw fetch("/cdn-cgi/zaraz/t"), e;};</script>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="/Web_Assignment/user/index">dirEngine.</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
				aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="/Web_Assignment/user/index" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="/Web_Assignment/user/about" class="nav-link">About</a></li>
					<li class="nav-item"><a href="/Web_Assignment/user/tour" class="nav-link">Tour</a></li>
					<li class="nav-item"><a href="/Web_Assignment/user/hotels" class="nav-link">Hotels</a></li>
					<li class="nav-item active"><a href="/Web_Assignment/user/blog" class="nav-link">Blog</a></li>
					<li class="nav-item"><a href="/Web_Assignment/user/contact" class="nav-link">Contact</a></li>
					<li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="hero-wrap js-fullheight" style="background-image: url('/Web_Assignment/views/UserView/images/bg_4.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-9 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
					<p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span
							class="mr-2"><a href="index.html">Home</a></span> <span>Blog</span></p>
					<h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Tips &amp;
						Articles</h1>
				</div>
			</div>
		</div>
	</div>
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row d-flex">
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('/Web_Assignment/views/UserView/images/image_1.jpg');">
						</a>
						<div class="text p-4 d-block">
							<span class="tag">Tips, Travel</span>
							<h3 class="heading mt-3"><a href="#">8 Best homestay in Philippines that you don't miss
									out</a></h3>
							<div class="meta mb-3">
								<div><a href="#">August 12, 2018</a></div>
								<div><a href="#">Admin</a></div>
								<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('/Web_Assignment/views/UserView/images/image_2.jpg');">
						</a>
						<div class="text p-4">
							<span class="tag">Culture</span>
							<h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the
									blind texts</a></h3>
							<div class="meta mb-3">
								<div><a href="#">August 12, 2018</a></div>
								<div><a href="#">Admin</a></div>
								<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('/Web_Assignment/views/UserView/images/image_3.jpg');">
						</a>
						<div class="text p-4">
							<span class="tag">Tips, Travel</span>
							<h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the
									blind texts</a></h3>
							<div class="meta mb-3">
								<div><a href="#">August 12, 2018</a></div>
								<div><a href="#">Admin</a></div>
								<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('/Web_Assignment/views/UserView/images/image_4.jpg');">
						</a>
						<div class="text p-4">
							<span class="tag">Tips, Travel</span>
							<h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the
									blind texts</a></h3>
							<div class="meta mb-3">
								<div><a href="#">August 12, 2018</a></div>
								<div><a href="#">Admin</a></div>
								<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('/Web_Assignment/views/UserView/images/image_5.jpg');">
						</a>
						<div class="text p-4 d-block">
							<span class="tag">Tips, Travel</span>
							<h3 class="heading mt-3"><a href="#">8 Best homestay in Philippines that you don't miss
									out</a></h3>
							<div class="meta mb-3">
								<div><a href="#">August 12, 2018</a></div>
								<div><a href="#">Admin</a></div>
								<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('/Web_Assignment/views/UserView/images/image_6.jpg');">
						</a>
						<div class="text p-4">
							<span class="tag">Culture</span>
							<h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the
									blind texts</a></h3>
							<div class="meta mb-3">
								<div><a href="#">August 12, 2018</a></div>
								<div><a href="#">Admin</a></div>
								<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('/Web_Assignment/views/UserView/images/image_7.jpg');">
						</a>
						<div class="text p-4">
							<span class="tag">Tips, Travel</span>
							<h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the
									blind texts</a></h3>
							<div class="meta mb-3">
								<div><a href="#">August 12, 2018</a></div>
								<div><a href="#">Admin</a></div>
								<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<a href="blog-single.html" class="block-20"
							style="background-image: url('/Web_Assignment/views/UserView/images/image_8.jpg');">
						</a>
						<div class="text p-4">
							<span class="tag">Tips, Travel</span>
							<h3 class="heading mt-3"><a href="#">Even the all-powerful Pointing has no control about the
									blind texts</a></h3>
							<div class="meta mb-3">
								<div><a href="#">August 12, 2018</a></div>
								<div><a href="#">Admin</a></div>
								<div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">dirEngine</h2>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
							there live the blind texts.</p>
						<ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
							<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-5">
						<h2 class="ftco-heading-2">Information</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">About</a></li>
							<li><a href="#" class="py-2 d-block">Service</a></li>
							<li><a href="#" class="py-2 d-block">Terms and Conditions</a></li>
							<li><a href="#" class="py-2 d-block">Become a partner</a></li>
							<li><a href="#" class="py-2 d-block">Best Price Guarantee</a></li>
							<li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Customer Support</h2>
						<ul class="list-unstyled">
							<li><a href="#" class="py-2 d-block">FAQ</a></li>
							<li><a href="#" class="py-2 d-block">Payment Option</a></li>
							<li><a href="#" class="py-2 d-block">Booking Tips</a></li>
							<li><a href="#" class="py-2 d-block">How it works</a></li>
							<li><a href="#" class="py-2 d-block">Contact Us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Have a Questions?</h2>
						<div class="block-23 mb-3">
							<ul>
								<li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain
										View, San Francisco, California, USA</span></li>
								<li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929
											210</span></a></li>
								<li><a href="#"><span class="icon icon-envelope"></span><span class="text"><span
												class="__cf_email__"
												data-cfemail="523b3c343d122b3d2720363d3f333b3c7c313d3f">[email&#160;protected]</span></span></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<p>
						Copyright &copy;
						<script data-cfasync="false"
							src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
						<script>document.write(new Date().getFullYear());</script> All rights reserved | This template
						is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com/"
							target="_blank">Colorlib</a>
					</p>
				</div>
			</div>
		</div>
	</footer>

<!-- 	<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
				stroke="#F96D00" />
		</svg></div> -->
	<script src="/Web_Assignment/views/UserView/js/jquery.min.js"></script>
	<script src="/Web_Assignment/views/UserView/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/Web_Assignment/views/UserView/js/popper.min.js"></script>
	<script src="/Web_Assignment/views/UserView/js/bootstrap.min.js"></script>
	<script src="/Web_Assignment/views/UserView/js/jquery.easing.1.3.js"></script>
	<script src="/Web_Assignment/views/UserView/js/jquery.waypoints.min.js"></script>
	<script src="/Web_Assignment/views/UserView/js/jquery.stellar.min.js"></script>
	<script src="/Web_Assignment/views/UserView/js/owl.carousel.min.js"></script>
	<script src="/Web_Assignment/views/UserView/js/jquery.magnific-popup.min.js"></script>
	<script src="/Web_Assignment/views/UserView/js/aos.js"></script>
	<script src="/Web_Assignment/views/UserView/js/jquery.animateNumber.min.js"></script>
	<script src="/Web_Assignment/views/UserView/js/bootstrap-datepicker.js"></script>
	<script src="/Web_Assignment/views/UserView/js/jquery.timepicker.min.html"></script>
	<script src="/Web_Assignment/views/UserView/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&amp;sensor=false"></script>
	<script src="/Web_Assignment/views/UserView/js/google-map.js"></script>
	<script src="/Web_Assignment/views/UserView/js/main.js"></script>

	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
	</script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317"
		integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA=="
		data-cf-beacon='{"rayId":"8667232d1c965ff0","b":1,"version":"2024.2.4","token":"cd0b4b3a733644fc843ef0b185f98241"}'
		crossorigin="anonymous"></script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/direngine/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 18 Mar 2024 18:03:35 GMT -->

</html>
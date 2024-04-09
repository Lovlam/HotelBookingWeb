<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preview.colorlib.com/theme/direngine/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 17:41:10 GMT -->

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
    nonce="7afee27c-e7ba-438f-bb73-a925cbf2c50c">try { (function (w, d) { !function (b, c, d, e) { b[d] = b[d] || {}; b[d].executed = []; b.zaraz = { deferred: [], listeners: [] }; b.zaraz.q = []; b.zaraz._f = function (f) { return async function () { var g = Array.prototype.slice.call(arguments); b.zaraz.q.push({ m: f, a: g }) } }; for (const h of ["track", "set", "debug"]) b.zaraz[h] = b.zaraz._f(h); b.zaraz.init = () => { var i = c.getElementsByTagName(e)[0], j = c.createElement(e), k = c.getElementsByTagName("title")[0]; k && (b[d].t = c.getElementsByTagName("title")[0].text); b[d].x = Math.random(); b[d].w = b.screen.width; b[d].h = b.screen.height; b[d].j = b.innerHeight; b[d].e = b.innerWidth; b[d].l = b.location.href; b[d].r = c.referrer; b[d].k = b.screen.colorDepth; b[d].n = c.characterSet; b[d].o = (new Date).getTimezoneOffset(); if (b.dataLayer) for (const o of Object.entries(Object.entries(dataLayer).reduce(((p, q) => ({ ...p[1], ...q[1] })), {}))) zaraz.set(o[0], o[1], { scope: "page" }); b[d].q = []; for (; b.zaraz.q.length;) { const r = b.zaraz.q.shift(); b[d].q.push(r) } j.defer = !0; for (const s of [localStorage, sessionStorage]) Object.keys(s || {}).filter((u => u.startsWith("_zaraz_"))).forEach((t => { try { b[d]["z_" + t.slice(7)] = JSON.parse(s.getItem(t)) } catch { b[d]["z_" + t.slice(7)] = s.getItem(t) } })); j.referrerPolicy = "origin"; j.src = "../../cdn-cgi/zaraz/sd0d9.js?z=" + btoa(encodeURIComponent(JSON.stringify(b[d]))); i.parentNode.insertBefore(j, i) };["complete", "interactive"].includes(c.readyState) ? zaraz.init() : b.addEventListener("DOMContentLoaded", zaraz.init) }(w, d, "zarazData", "script"); })(window, document) } catch (e) { throw fetch("/cdn-cgi/zaraz/t"), e; };</script>
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
          <li class="nav-item active"><a href="/Web_Assignment/user/about" class="nav-link">About</a></li>
          <li class="nav-item"><a href="/Web_Assignment/user/tour" class="nav-link">Tour</a></li>
          <li class="nav-item"><a href="/Web_Assignment/user/hotels" class="nav-link">Hotels</a></li>
          <li class="nav-item"><a href="/Web_Assignment/user/blog" class="nav-link">Blog</a></li>
          <li class="nav-item"><a href="/Web_Assignment/user/contact" class="nav-link">Contact</a></li>
          <li class="nav-item cta"><a href="contact.html" class="nav-link"><span>Add listing</span></a></li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="hero-wrap js-fullheight" style="background-image: url('/Web_Assignment/views/UserView/images/bg_2.jpg');">
    <div class="overlay"></div>
    <div class="container">
      <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
        data-scrollax-parent="true">
        <div class="col-md-9 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
          <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a
                href="index.html">Home</a></span> <span>About</span></p>
          <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">About Us</h1>
        </div>
      </div>
    </div>
  </div>
  <section class="ftco-section">
    <div class="container">
      <div class="row d-md-flex">
        <div class="col-md-6 ftco-animate img about-image" style="background-image: url(/Web_Assignment/views/UserView/images/about.jpg);">
        </div>
        <div class="col-md-6 ftco-animate p-md-5">
          <div class="row">
            <div class="col-md-12 nav-link-wrap mb-5">
              <div class="nav ftco-animate nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <a class="nav-link active" id="v-pills-whatwedo-tab" data-toggle="pill" href="#v-pills-whatwedo"
                  role="tab" aria-controls="v-pills-whatwedo" aria-selected="true">What we do</a>
                <a class="nav-link" id="v-pills-mission-tab" data-toggle="pill" href="#v-pills-mission" role="tab"
                  aria-controls="v-pills-mission" aria-selected="false">Our mission</a>
                <a class="nav-link" id="v-pills-goal-tab" data-toggle="pill" href="#v-pills-goal" role="tab"
                  aria-controls="v-pills-goal" aria-selected="false">Our goal</a>
              </div>
            </div>
            <div class="col-md-12 d-flex align-items-center">
              <div class="tab-content ftco-animate" id="v-pills-tabContent">
                <div class="tab-pane fade show active" id="v-pills-whatwedo" role="tabpanel"
                  aria-labelledby="v-pills-whatwedo-tab">
                  <div>
                    <h2 class="mb-4">Offering Reliable Hosting</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there
                      live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a
                      large language ocean.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste
                      dolores consequatur</p>
                  </div>
                </div>
                <div class="tab-pane fade" id="v-pills-mission" role="tabpanel" aria-labelledby="v-pills-mission-tab">
                  <div>
                    <h2 class="mb-4">Exceptional Web Solutions</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there
                      live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a
                      large language ocean.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste
                      dolores consequatur</p>
                  </div>
                </div>
                <div class="tab-pane fade" id="v-pills-goal" role="tabpanel" aria-labelledby="v-pills-goal-tab">
                  <div>
                    <h2 class="mb-4">Help Our Customer</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there
                      live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a
                      large language ocean.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt voluptate, quibusdam sunt iste
                      dolores consequatur</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="ftco-section bg-light">
    <div class="container">
      <div class="row justify-content-start mb-5 pb-3">
        <div class="col-md-7 heading-section ftco-animate">
          <span class="subheading">FAQS</span>
          <h2 class="mb-4"><strong>Frequently</strong> Ask Question</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 ftco-animate">
          <div id="accordion">
            <div class="row">
              <div class="col-md-6">
                <div class="card">
                  <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#menuone" aria-expanded="true"
                      aria-controls="menuone">When she reached the first hills? <span class="collapsed"><i
                          class="icon-plus-circle"></i></span><span class="expanded"><i
                          class="icon-minus-circle"></i></span></a>
                  </div>
                  <div id="menuone" class="collapse show">
                    <div class="card-body">
                      <p>When she reached the first hills of the Italic Mountains, she had a last view back on the
                        skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her
                        own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her
                        way.</p>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#menutwo" aria-expanded="false"
                      aria-controls="menutwo">Italic Mountains, she had a last <span class="collapsed"><i
                          class="icon-plus-circle"></i></span><span class="expanded"><i
                          class="icon-minus-circle"></i></span></a>
                  </div>
                  <div id="menutwo" class="collapse">
                    <div class="card-body">
                      <p>When she reached the first hills of the Italic Mountains, she had a last view back on the
                        skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her
                        own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her
                        way.</p>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#menu3" aria-expanded="false"
                      aria-controls="menu3"> Bookmarksgrove, the headline? <span class="collapsed"><i
                          class="icon-plus-circle"></i></span><span class="expanded"><i
                          class="icon-minus-circle"></i></span></a>
                  </div>
                  <div id="menu3" class="collapse">
                    <div class="card-body">
                      <p>When she reached the first hills of the Italic Mountains, she had a last view back on the
                        skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her
                        own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her
                        way.</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="card">
                  <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#menu4" aria-expanded="false"
                      aria-controls="menu4">Alphabet Village and the subline of her own? <span class="collapsed"><i
                          class="icon-plus-circle"></i></span><span class="expanded"><i
                          class="icon-minus-circle"></i></span></a>
                  </div>
                  <div id="menu4" class="collapse">
                    <div class="card-body">
                      <p>When she reached the first hills of the Italic Mountains, she had a last view back on the
                        skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her
                        own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her
                        way.</p>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#menu5" aria-expanded="false"
                      aria-controls="menu5">Then she continued her way? <span class="collapsed"><i
                          class="icon-plus-circle"></i></span><span class="expanded"><i
                          class="icon-minus-circle"></i></span></a>
                  </div>
                  <div id="menu5" class="collapse">
                    <div class="card-body">
                      <p>When she reached the first hills of the Italic Mountains, she had a last view back on the
                        skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her
                        own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her
                        way.</p>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-header">
                    <a class="card-link" data-toggle="collapse" href="#menu6" aria-expanded="false"
                      aria-controls="menu6">Skyline of her hometown Bookmarksgrove? <span class="collapsed"><i
                          class="icon-plus-circle"></i></span><span class="expanded"><i
                          class="icon-minus-circle"></i></span></a>
                  </div>
                  <div id="menu6" class="collapse">
                    <div class="card-body">
                      <p>When she reached the first hills of the Italic Mountains, she had a last view back on the
                        skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her
                        own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her
                        way.</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
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
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the
              blind texts.</p>
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
                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San
                    Francisco, California, USA</span></li>
                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                <li><a href="#"><span class="icon icon-envelope"></span><span class="text"><span class="__cf_email__"
                        data-cfemail="21484f474e61584e5453454e4c40484f0f424e4c">[email&#160;protected]</span></span></a>
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
            <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with
            <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com/"
              target="_blank">Colorlib</a>
          </p>
        </div>
      </div>
    </div>
  </footer>

  <!-- <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
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
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
  </script>
  <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317"
    integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA=="
    data-cf-beacon='{"rayId":"87140b495dc06bc9","b":1,"version":"2024.3.0","token":"cd0b4b3a733644fc843ef0b185f98241"}'
    crossorigin="anonymous"></script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/direngine/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 17:41:11 GMT -->

</html>
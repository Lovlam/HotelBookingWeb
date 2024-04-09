<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from preview.colorlib.com/theme/bootstrap/signup-form-19/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 17:29:42 GMT -->
<head>
<title>Đăng ký</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" href="../../../../stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/Web_Assignment/views/SignUp/css/style.css">
<script nonce="ce684150-9a0c-442a-b20e-61e5cc901722">try{(function(w,d){!function(b,c,d,e){b[d]=b[d]||{};b[d].executed=[];b.zaraz={deferred:[],listeners:[]};b.zaraz.q=[];b.zaraz._f=function(f){return async function(){var g=Array.prototype.slice.call(arguments);b.zaraz.q.push({m:f,a:g})}};for(const h of["track","set","debug"])b.zaraz[h]=b.zaraz._f(h);b.zaraz.init=()=>{var i=c.getElementsByTagName(e)[0],j=c.createElement(e),k=c.getElementsByTagName("title")[0];k&&(b[d].t=c.getElementsByTagName("title")[0].text);b[d].x=Math.random();b[d].w=b.screen.width;b[d].h=b.screen.height;b[d].j=b.innerHeight;b[d].e=b.innerWidth;b[d].l=b.location.href;b[d].r=c.referrer;b[d].k=b.screen.colorDepth;b[d].n=c.characterSet;b[d].o=(new Date).getTimezoneOffset();if(b.dataLayer)for(const o of Object.entries(Object.entries(dataLayer).reduce(((p,q)=>({...p[1],...q[1]})),{})))zaraz.set(o[0],o[1],{scope:"page"});b[d].q=[];for(;b.zaraz.q.length;){const r=b.zaraz.q.shift();b[d].q.push(r)}j.defer=!0;for(const s of[localStorage,sessionStorage])Object.keys(s||{}).filter((u=>u.startsWith("_zaraz_"))).forEach((t=>{try{b[d]["z_"+t.slice(7)]=JSON.parse(s.getItem(t))}catch{b[d]["z_"+t.slice(7)]=s.getItem(t)}}));j.referrerPolicy="origin";j.src="../../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(b[d])));i.parentNode.insertBefore(j,i)};["complete","interactive"].includes(c.readyState)?zaraz.init():b.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document)}catch(e){throw fetch("/cdn-cgi/zaraz/t"),e;};</script></head>
<body class="img" style="background-image: url(https://images2.thanhnien.vn/528068263637045248/2024/3/28/anh-man-hinh-2024-03-28-luc-110530-1711600059831805212218.png);">
<section class="ftco-section">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-6 text-center mb-5">
<h2 class="heading-section"></h2>
</div>
</div>
<div class="row justify-content-center">
<div class="col-md-7 col-lg-5">
<div class="login-wrap">
<h3 class="text-center mb-4">Create Your Account</h3>
<form action="/Web_Assignment/register" method="post" class="signup-form" onsubmit="return validatePassword();">
<div class="form-group mb-3">
<label class="label" for="name">Full Name</label>
<input type="text" class="form-control" placeholder="Tên của bạn" name="Name" required=>
<span class="icon fa fa-user-o"></span>
</div>
<div class="form-group mb-3">
<label class="label" for="email">Phone</label>
<input type="text" class="form-control" name="Phone" placeholder="Phone" required>
<span class="icon fa fa-paper-plane-o"></span>
</div>
<div class="form-group mb-3">
<label class="label" for="email">Address</label>
<input type="text" class="form-control" name="Address" placeholder="Address" required>
<span class="icon fa fa-paper-plane-o"></span>
</div>
<div class="form-group mb-3">
<label class="label" for="email">Email Address</label>
<input type="text" class="form-control" name="Email" placeholder="Name@gmail.com" required>
<span class="icon fa fa-paper-plane-o"></span>
<h5>${message}</h5>
        <div class="form-group mb-3">
            <label class="label" for="password">Password</label>
            <input id="password" type="password" class="form-control" name="Password1" placeholder="Password" required>
            <span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
            <span class="icon fa fa-lock"></span>
        </div>

        <!-- Trường nhập lại mật khẩu -->
        <div class="form-group mb-3">
            <label class="label" for="password">Confirm Password</label>
            <input id="password-confirm" name="Password" type="password" class="form-control" placeholder="Password" required>
            <span toggle="#password-confirm" class="fa fa-fw fa-eye field-icon toggle-password"></span>
            <span class="icon fa fa-lock"></span>
            <span id="password-error" style="color: red;"></span> <!-- Thông báo lỗi -->
        </div>
<div class="form-group">
<button type="submit" class="form-control btn btn-primary submit px-3">Sign Up</button>
</div>
</form>
<p>I'm already a member!<a type="submit" href="/Web_Assignment/login">Sign In</a> </p>

</div>
</div>
</div>
</div>
</section>
<script src="/Web_Assignment/views/SignUp/js/jquery.min.js"></script>
<script src="/Web_Assignment/views/SignUp/js/popper.js"></script>
<script src="/Web_Assignment/views/SignUp/js/bootstrap.min.js"></script>
<script src="/Web_Assignment/views/SignUp/js/main.js"></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317" integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA==" data-cf-beacon='{"rayId":"8713fb228ff68998","b":1,"version":"2024.3.0","token":"cd0b4b3a733644fc843ef0b185f98241"}' crossorigin="anonymous"></script>
<script>
    // Function để kiểm tra mật khẩu xác nhận
    function validatePassword() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("password-confirm").value;

        if (password != confirmPassword) {
            // Nếu mật khẩu không khớp, hiển thị cảnh báo thông qua alert()
            alert("Mật khẩu xác nhận không khớp. Vui lòng nhập lại.");
            return false;
        } else {
            // Nếu mật khẩu khớp, không hiển thị cảnh báo
            return true;
        }
    }
</script>
</body>

</html>

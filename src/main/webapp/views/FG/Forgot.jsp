<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!doctype html>
<html lang="en">

<head>
<title>Contact Form 05</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,700" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../../../../stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/Web_Assignment/views/FG/css/style.css">
<script nonce="4130a13d-4c1e-4a6a-b8da-702a99a19bef">try{(function(w,d){!function(b,c,d,e){b[d]=b[d]||{};b[d].executed=[];b.zaraz={deferred:[],listeners:[]};b.zaraz.q=[];b.zaraz._f=function(f){return async function(){var g=Array.prototype.slice.call(arguments);b.zaraz.q.push({m:f,a:g})}};for(const h of["track","set","debug"])b.zaraz[h]=b.zaraz._f(h);b.zaraz.init=()=>{var i=c.getElementsByTagName(e)[0],j=c.createElement(e),k=c.getElementsByTagName("title")[0];k&&(b[d].t=c.getElementsByTagName("title")[0].text);b[d].x=Math.random();b[d].w=b.screen.width;b[d].h=b.screen.height;b[d].j=b.innerHeight;b[d].e=b.innerWidth;b[d].l=b.location.href;b[d].r=c.referrer;b[d].k=b.screen.colorDepth;b[d].n=c.characterSet;b[d].o=(new Date).getTimezoneOffset();if(b.dataLayer)for(const o of Object.entries(Object.entries(dataLayer).reduce(((p,q)=>({...p[1],...q[1]})),{})))zaraz.set(o[0],o[1],{scope:"page"});b[d].q=[];for(;b.zaraz.q.length;){const r=b.zaraz.q.shift();b[d].q.push(r)}j.defer=!0;for(const s of[localStorage,sessionStorage])Object.keys(s||{}).filter((u=>u.startsWith("_zaraz_"))).forEach((t=>{try{b[d]["z_"+t.slice(7)]=JSON.parse(s.getItem(t))}catch{b[d]["z_"+t.slice(7)]=s.getItem(t)}}));j.referrerPolicy="origin";j.src="../../../cdn-cgi/zaraz/sd0d9.js?z="+btoa(encodeURIComponent(JSON.stringify(b[d])));i.parentNode.insertBefore(j,i)};["complete","interactive"].includes(c.readyState)?zaraz.init():b.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document)}catch(e){throw fetch("/cdn-cgi/zaraz/t"),e;};</script></head>
<body>
<section class="ftco-section">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-6 text-center mb-5">
<h2 class="heading-section">Contact Form #05</h2>
</div>
</div>
<div class="row justify-content-center">
<div class="col-md-12">
<div class="wrapper">
<div class="row no-gutters">
<div class="col-lg-6">
<div class="contact-wrap w-100 p-md-5 p-4">
<h3>Contact us</h3>
<p class="mb-4">We're open for any suggestion or just to have a chat</p>
<div id="form-message-warning" class="mb-4"></div>
<div id="form-message-success" class="mb-4">
Your message was sent, thank you!
</div>
<div class="row mb-4">
<div class="col-md-4">
<div class="dbox w-100 d-flex align-items-start">
<div class="text">
<p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="dbox w-100 d-flex align-items-start">
<div class="text">
<p><span>Email:</span> <a href="https://preview.colorlib.com/cdn-cgi/l/email-protection#761f181019360f190304051f02135815191b"><span class="__cf_email__" data-cfemail="b1d8dfd7def1c8dec4c3c2d8c5d49fd2dedc">[email&#160;protected]</span></a></p>
</div>
</div>
</div>
<div class="col-md-4">
<div class="dbox w-100 d-flex align-items-start">
<div class="text">
<p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
</div>
</div>
</div>
</div>
<form method="POST" id="contactForm" name="contactForm" class="contactForm">
<div class="row">
<div class="col-md-12">
<div class="form-group">
<input type="text" class="form-control" name="phone" id="name" placeholder="Phone">
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<input type="email" class="form-control" name="SMG" id="email" placeholder="SMG">
<h5>${message}</h5>
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<input type="submit" value="Send Message" class="btn btn-primary">
<div class="submitting"></div>
</div>
</div>
</div>
</form>
<div class="w-100 social-media mt-5">
<h3>Follow us here</h3>
<p>
<a href="#">Facebook</a>
<a href="#">Twitter</a>
<a href="#">Instagram</a>
<a href="#">Dribbble</a>
</p>
</div>
</div>
</div>
<div class="col-lg-6 d-flex align-items-stretch">
<div class="info-wrap w-100 p-5 img" style="background-image: url(images/img.jpg);">
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<script data-cfasync="false" src="../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="js/jquery.min.js"></script>
<script src="/Web_Assignment/views/FG/js/popper.js"></script>
<script src="/Web_Assignment/views/FG/js/bootstrap.min.js"></script>
<script src="/Web_Assignment/views/FG/js/jquery.validate.min.js"></script>
<script src="/Web_Assignment/views/FG/js/main.js"></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v84a3a4012de94ce1a686ba8c167c359c1696973893317" integrity="sha512-euoFGowhlaLqXsPWQ48qSkBSCFs3DPRyiwVu3FjR96cMPx+Fr+gpWRhIafcHwqwCqWS42RZhIudOvEI+Ckf6MA==" data-cf-beacon='{"rayId":"8714d71cfee044af","b":1,"version":"2024.3.0","token":"cd0b4b3a733644fc843ef0b185f98241"}' crossorigin="anonymous"></script>
<script src="https://static.stringee.com/web_phone/lastest/js/StringeeSoftPhone-lastest.js"></script>
<script>
    // Đợi cho trang web được tải hoàn toàn trước khi thực hiện hành động
    document.addEventListener("DOMContentLoaded", function() {
        // Khởi tạo Stringee SoftPhone
        var stringeePhone = new StringeePhone();

        // Thực hiện cuộc gọi khi biểu mẫu được nộp
        var form = document.getElementById("contactForm");
        form.addEventListener("submit", function(event) {
            event.preventDefault();
            var phoneNumber = document.getElementById("phone").value;
            callPhoneNumber(phoneNumber);
        });

        // Hàm thực hiện cuộc gọi
        function callPhoneNumber(phoneNumber) {
            // Lấy thông tin số điện thoại để gọi
            var callInfo = {
                from: 'YOUR_STRINGEE_NUMBER', // Số Stringee của bạn
                to: phoneNumber,
                isVideoCall: false // Có thể cấu hình là cuộc gọi video
            };

            // Thực hiện cuộc gọi
            stringeePhone.makeCall(callInfo);

            // Lắng nghe sự kiện khi cuộc gọi được kết thúc
            stringeePhone.on('callEnded', function(event) {
                console.log('Cuộc gọi đã kết thúc: ', event);
            });

            // Lắng nghe sự kiện khi có lỗi xảy ra trong quá trình gọi
            stringeePhone.on('callFailed', function(event) {
                console.error('Đã xảy ra lỗi khi thực hiện cuộc gọi: ', event);
            });
        }
    });
</script>

</body>

<!-- Mirrored from preview.colorlib.com/theme/bootstrap/contact-form-05/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 08 Apr 2024 19:59:57 GMT -->
</html>

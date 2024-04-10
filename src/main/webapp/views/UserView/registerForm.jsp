<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng ký</title>
<!-- Thêm Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    /* Căn giữa nội dung */
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
      
    }
    /* Thêm box shadow cho form */
    .register-form {
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        background-color: #ffffff; /* Màu nền cho form */
    }
</style>
</head>
<body>
    <div class="container">
        <form class="register-form">
            <div class="mb-3">
                <label for="username" class="form-label">Full Name:</label>
                <input name="Name" id="username" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input name="Password" id="password" type="password" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input name="Email" id="email" type="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Phone:</label>
                <input name="Phone" id="phone" type="phone" class="form-control" required>
            </div>
			<div class="mb-3">
                <label for="address" class="form-label">Address:</label>
                <input name="Address" id="address" type="address" class="form-control" required>
            </div>
            <h1>${message}</h1>
            <hr>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#otpModal">
              Sign Up
            </button>
            
            <!-- Modal -->
			<div class="modal fade" id="otpModal" tabindex="-1" aria-labelledby="otpModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="otpModalLabel">Enter OTP</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        <form  class="register-form">
			            <label for="otp" class="form-label">OTP:</label>
			            <input name="OTP" id="otp" type="text" class="form-control" required>
			        </form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			        <button id="confirmOTPButton" type="button" class="btn btn-primary">Confirm</button>
			      </div>
			    </div>
			  </div>
			</div>

<!-- Thêm thư viện Bootstrap 5 JavaScript (cho modal) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
$('#signupButton').click(function() {
    $('#otpModal').modal('show'); // Hiển thị modal OTP
});

</script>
</body>
</html>

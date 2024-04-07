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
        <form action="/Web_Assignment/register" method="post" class="register-form">
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
                <label for="phone" class="form-label">Address:</label>
                <input name="Address" id="phone" type="phone" class="form-control" required>
            </div>
            <h1>${message}</h1>
            <hr>
            <button type="submit" class="btn btn-success">Register</button>
        </form>
    </div>
</body>
</html>

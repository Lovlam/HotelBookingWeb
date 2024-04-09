<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>Thêm sản phẩm | Quản trị Admin</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="/Web_Assignment/views/viewAdmin/css.css">
  <!-- Font-icon css-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
  <!-- or -->
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
  <link rel="stylesheet" type="text/css"
    href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
  <script src="http://code.jquery.com/jquery.min.js" type="text/javascript"></script>
  <script>

    function readURL(input, thumbimage) {
      if (input.files && input.files[0]) { //Sử dụng  cho Firefox - chrome
        var reader = new FileReader();
        reader.onload = function (e) {
          $("#thumbimage").attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
      }
      else { // Sử dụng cho IE
        $("#thumbimage").attr('src', input.value);

      }
      $("#thumbimage").show();
      $('.filename').text($("#uploadfile").val());
      $('.Choicefile').css('background', '#14142B');
      $('.Choicefile').css('cursor', 'default');
      $(".removeimg").show();
      $(".Choicefile").unbind('click');

    }
    $(document).ready(function () {
      $(".Choicefile").bind('click', function () {
        $("#uploadfile").click();

      });
      $(".removeimg").click(function () {
        $("#thumbimage").attr('src', '').hide();
        $("#myfileupload").html('<input type="file" id="uploadfile"  onchange="readURL(this);" />');
        $(".removeimg").hide();
        $(".Choicefile").bind('click', function () {
          $("#uploadfile").click();
        });
        $('.Choicefile').css('background', '#14142B');
        $('.Choicefile').css('cursor', 'pointer');
        $(".filename").text("");
      });
    })
  </script>
</head>

<body class="app sidebar-mini rtl">
  <style>
    .Choicefile {
      display: block;
      background: #14142B;
      border: 1px solid #fff;
      color: #fff;
      width: 150px;
      text-align: center;
      text-decoration: none;
      cursor: pointer;
      padding: 5px 0px;
      border-radius: 5px;
      font-weight: 500;
      align-items: center;
      justify-content: center;
    }

    .Choicefile:hover {
      text-decoration: none;
      color: white;
    }

    #uploadfile,
    .removeimg {
      display: none;
    }

    #thumbbox {
      position: relative;
      width: 100%;
      margin-bottom: 20px;
    }

    .removeimg {
      height: 25px;
      position: absolute;
      background-repeat: no-repeat;
      top: 5px;
      left: 5px;
      background-size: 25px;
      width: 25px;
      /* border: 3px solid red; */
      border-radius: 50%;

    }

    .removeimg::before {
      -webkit-box-sizing: border-box;
      box-sizing: border-box;
      content: '';
      border: 1px solid red;
      background: red;
      text-align: center;
      display: block;
      margin-top: 11px;
      transform: rotate(45deg);
    }

    .removeimg::after {
      /* color: #FFF; */
      /* background-color: #DC403B; */
      content: '';
      background: red;
      border: 1px solid red;
      text-align: center;
      display: block;
      transform: rotate(-45deg);
      margin-top: -2px;
    }
  </style>
  <!-- Navbar-->
  <header class="app-header">
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
      aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">


      <!-- User Menu-->
      <li><a class="app-nav__item" href="/index.html"><i class='bx bx-log-out bx-rotate-180'></i> </a>

      </li>
    </ul>
  </header>
  <!-- Sidebar menu-->
  <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
  <aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="/images/hay.jpg" width="50px"
        alt="User Image">
      <div>
        <p class="app-sidebar__user-name"><b>Võ Trường</b></p>
        <p class="app-sidebar__user-designation">Chào mừng bạn trở lại</p>
      </div>
    </div>
    <hr>
    <ul class="app-menu">
      <li><a class="app-menu__item haha" href="phan-mem-ban-hang.html"><i class='app-menu__icon bx bx-cart-alt'></i>
          <span class="app-menu__label">Hóa đơn</span></a></li>
      <li><a class="app-menu__item active" href="index.html"><i class='app-menu__icon bx bx-tachometer'></i><span
            class="app-menu__label">Bảng điều khiển</span></a></li>
      <li><a class="app-menu__item " href="/Web_Assignment/admin/hotel"><i class='app-menu__icon bx bx-id-card'></i> <span
            class="app-menu__label">Quản lý khách sạn</span></a></li>
      <li><a class="app-menu__item" href="/Web_Assignment/admin/room"><i
            class='app-menu__icon bx bx-purchase-tag-alt'></i><span class="app-menu__label">Quản lý phòng</span></a> 
      </li>
      <li><a class="app-menu__item" href="/Web_Assignment/admin/booking"><i class='app-menu__icon bx bx-task'></i><span
            class="app-menu__label">Booking </span></a></li>
      <li><a class="app-menu__item" href="/Web_Assignment/admin/images"><i class='app-menu__icon bx bx-run'></i><span
            class="app-menu__label">Hình ảnh Phòng
          </span></a></li>
      <li><a class="app-menu__item" href="/Web_Assignment/admin/account"><i class='app-menu__icon bx bx-dollar'></i><span
            class="app-menu__label">Tài khoản</span></a></li>
      <li><a class="app-menu__item" href="/Web_Assignment/admin/money"><i
            class='app-menu__icon bx bx-pie-chart-alt-2'></i><span class="app-menu__label">Báo cáo doanh thu</span></a>
      </li>
      <li><a class="app-menu__item" href="/Web_Assignment/admin/calendar"><i class='app-menu__icon bx bx-calendar-check'></i><span
            class="app-menu__label">Lịch công tác </span></a></li>
      <li><a class="app-menu__item " href="#"><i class='app-menu__icon bx bx-cog'></i> <span
              class="app-menu__label">Cài đặt hệ Thống</span></a></li>
    </ul>
  </aside>
  <main class="app-content">
    <div class="app-title">
      <ul class="app-breadcrumb breadcrumb">
        <li class="breadcrumb-item">Danh sách phòng</li>
        <li class="breadcrumb-item"><a href="#">Thêm phòng</a></li>
      </ul>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="tile">
          <h3 class="tile-title">Tạo mới phòng</h3>
          <div class="tile-body">
           
            <form class="row">
              <div class="form-group col-md-3">
                <label class="control-label">Khách sạn</label>
				    <select id="secltHotel" name="secltHotel" class="form-control">
				        <c:forEach var="hotel" items="${listHotel}">
							<option value="${hotel.name}">${hotel.name}</option>
						</c:forEach>
				    </select>
              </div>


              <div class="form-group  col-md-3">
                <label class="control-label">Giá</label>
                <input class="form-control" type="number" id="roomPrice" required">
              </div>
				
			  <div class="form-group  col-md-3">
                <label class="control-label">Loại Phòng</label>
                <input class="form-control" type="text" id="roomType" required">
              </div>

              <div class="form-group col-md-12">
                <label class="control-label">Mô tả phòng</label>
                <textarea class="form-control" name="mota" id="roomDes" required"></textarea>

              </div>

          </div>
          <button class="btn btn-save" type="button" onclick="addRoom()">Lưu lại</button>
          <a class="btn btn-cancel" href="table-data-product.html">Hủy bỏ</a>
        </div>
  </main>


  <script>
  function addRoom() {
	// Lấy thông tin về phòng từ các trường nhập liệu hoặc các nguồn khác
	    var roomInfo = {
	        hotelName: $("#secltHotel").val(),
	        roomType: $("#roomType").val(),
	        roomPrice: $('#roomPrice').val(),
	        roomDes: $('#roomDes').val(),
	        // Thêm các thông tin khác nếu cần
	    };

	    $.ajax({
	        type: "POST", // Sử dụng phương thức POST
	        url: "/Web_Assignment/admin/room/add", // URL để gửi yêu cầu
	        data: roomInfo, // Dữ liệu để gửi cùng yêu cầu (các thông tin của phòng)
	        success: function(response) {
	            // Xử lý phản hồi từ máy chủ khi yêu cầu thành công
	            swal("Đã thêm thành công", { icon: "success" }).then((value) => {
	                window.location.href = "/Web_Assignment/admin/room"; // Chuyển hướng đến trang danh sách phòng
	            });
	        },
	        error: function(xhr, status, error) {
	            // Xử lý lỗi khi yêu cầu thất bại
	            swal("Không thể thêm phòng", { icon: "error" }).then((value) => {
	                window.location.href = "/Web_Assignment/admin/room"; // Chuyển hướng đến trang danh sách phòng
	            });
	        }
	    });
	  }
  

  </script>
</body>

</html>
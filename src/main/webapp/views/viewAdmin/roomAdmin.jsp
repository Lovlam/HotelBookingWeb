<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Danh sách phòng | Quản trị Admin</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="/Web_Assignment/views/viewAdmin/css.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
  <!-- or -->
  <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

  <!-- Font-icon css-->
  <link rel="stylesheet" type="text/css"
    href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

</head>

<body onload="time()" class="app sidebar-mini rtl">
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
        <p class="app-sidebar__user-name"><b>My Name</b></p>
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
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item active"><a href="#"><b>Danh sách phòng</b></a></li>
      </ul>
      <div id="clock"></div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="tile">
          <div class="tile-body">

            <div class="row element-button">
              <div class="col-sm-2">

                <a class="btn btn-add btn-sm" href="/Web_Assignment/admin/room/add" title="Thêm"><i class="fas fa-plus"></i>
                  Tạo mới phòng</a>
              </div>
              <div class="col-sm-2">
                <a class="btn btn-delete btn-sm nhap-tu-file" type="button" title="Nhập" onclick="myFunction(this)"><i
                    class="fas fa-file-upload"></i> Tải từ file</a>
              </div>

              <div class="col-sm-2">
                <a class="btn btn-delete btn-sm print-file" type="button" title="In" onclick="myApp.printTable()"><i
                    class="fas fa-print"></i> In dữ liệu</a>
              </div>
              <div class="col-sm-2">
                <a class="btn btn-delete btn-sm print-file js-textareacopybtn" type="button" title="Sao chép"><i
                    class="fas fa-copy"></i> Sao chép</a>
              </div>

              <div class="col-sm-2">
                <a class="btn btn-excel btn-sm" href="" title="In"><i class="fas fa-file-excel"></i> Xuất Excel</a>
              </div>
              <div class="col-sm-2">
                <a class="btn btn-delete btn-sm pdf-file" type="button" title="In" onclick="myFunction(this)"><i
                    class="fas fa-file-pdf"></i> Xuất PDF</a>
              </div>
              <div class="col-sm-2">
                <a class="btn btn-delete btn-sm" type="button" title="Xóa" onclick="myFunction(this)"><i
                    class="fas fa-trash-alt"></i> Xóa tất cả</a>
              </div>
            </div>
            <div class="row">
            	<div class="form-group col-md-6">
				    <label for="secltHotel" class="control-label">Khách Sạn</label>
				    <select id="secltHotel" name="secltHotel" class="form-control">
				        <option value="all">Tất cả</option>
				        <c:forEach var="hotel" items="${listHotel}">
				            <option value="${hotel.name}" data-hotel="${hotel.name}">${hotel.name}</option>
				        </c:forEach>
				    </select>
				</div>
				<div class="form-group col-md-6">
				    <label for="roomType" class="control-label">Loại phòng</label>
				    <select id="roomType" name="roomType" class="form-control">
				        <option value="all">Tất cả</option>
				        <c:forEach var="room" items="${listRoom}">
				            <option value="${room.roomType}" data-hotel="${room.getHotelName()}" data-room-type="${room.roomType}">${room.roomType}</option>
				        </c:forEach>
				    
				    </select>
				</div>
            <table class="table table-hover table-bordered js-copytextarea" cellpadding="0" cellspacing="0" border="0"
              id="sampleTable">
              <thead>
                <tr>                 
                  <th width="80">Mã phòng</th>
                  <th width="130">Tên khách sạn</th>
                  <th width="130">Loại phòng</th>
                  <th width="100">Giá</th>
                  <th width="90">Trạng thái</th>
                  <th width="190">Mô tả</th>
                  <th width="80">Chức năng</th>
                </tr>
              </thead>
              <tbody>
                
				<c:forEach var="room" items="${listRoom}">
					<tr>
		                  <td>${room.roomID}</td>
		                  <td>${room.getHotelName()} </td>
		                  <td>${room.roomType}</td>
		                  <td>${room.price}</td>
		                  <td>${room.isBooking() == true ?
						        '<span class="btn btn-primary btn-sm trash">Đã đặt</span>' :
						        '<span class="badge bg-success">Còn trống</span>'}
						   </td>
						   <td>${room.description}</td>
		                  <td class="table-td-center"><button class="btn btn-primary btn-sm trash" type="button"  title="Xóa"
		                     ><i class="fas fa-trash-alt" onclick="deleteRoom(${room.roomID})"></i>
		                    </button>
		                    <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
		                    </button>
		                  </td>
                </tr>
				</c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </main>

  <!--
  MODAL
--><!-- Modal -->
<!-- Modal -->
<div class="modal fade" id="ModalUP" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"
  data-keyboard="false">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <form id="editForm" method="post" enctype="multipart/form-data">
        <div class="modal-body">
          <div class="row">
            <div class="form-group col-md-12">
              <span class="thong-tin-thanh-toan">
                <h5>Chỉnh sửa thông tin Phòng</h5>
              </span>
            </div>
          </div>
          <div class="row">
            <div class="form-group col-md-12">
              <label class="control-label">Loại phòng</label>
              <input id="TypeRoom" name="roomType" class="form-control" type="text" required>
            </div>
            <div class="form-group col-md-12">
              <label class="control-label">Giá</label>
              <input id="price" name="price" class="form-control" type="number" required>
            </div>
            
            <div class="form-group col-md-12">
              <label class="control-label">Trạng thái</label>
              <select id="status" name="status" class="form-control">
                <option value="available">Còn trống</option>
                <option value="booked">Đã đặt</option>
              </select>
            </div>
            <div class="form-group col-md-12">
              <label class="control-label">Mô tả</label>
              <textarea id="description" name="description" class="form-control" rows="3"></textarea>
            </div>
            <input id="roomId" name="roomId" type="hidden">
          </div>
          
          <br>
          <br>
          <br>
          <button id="saveButton" class="btn btn-save" type="button" onclick="submitForm()">Lưu lại</button>
          <button class="btn btn-cancel" data-dismiss="modal" type="button">Hủy bỏ</button>
          <br>
        </div>
      </form>
      <div class="modal-footer"></div>
    </div>
  </div>
</div>


  <!--
  MODAL
-->

  <script src="/Web_Assignment/views/viewAdmin/js/jquery-3.2.1.min.js"></script>
<script src="/Web_Assignment/views/viewAdmin/js/popper.min.js"></script>
<script src="/Web_Assignment/views/viewAdmin/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
<script src="/Web_Assignment/views/viewAdmin/js/plugins/jquery.dataTables.min.js"></script>
<script src="/Web_Assignment/views/viewAdmin/js/plugins/dataTables.bootstrap.min.js"></script>

<script>


  function deleteRoom(roomID) {

    swal({
      title: "Cảnh báo",
      text: "Bạn có chắc chắn muốn xóa phòng này?",
      buttons: ["Hủy bỏ", "Đồng ý"],
    }).then((willDelete) => {
      if (willDelete) {
        // Gửi yêu cầu DELETE đến URL endpoint
        $.ajax({
        	
          url: "/Web_Assignment/admin/room/delete?id=" + roomID,
          success: function(response) {
            // Xử lý phản hồi từ máy chủ
            swal("Đã xóa thành công!", { icon: "success" })
              .then((value) => {
                // Tải lại trang hoặc cập nhật dữ liệu khách sạn
                window.location.href = "/Web_Assignment/admin/room";
              });
          },
          error: function(xhr, status, error) {
            swal("Có lỗi xảy ra khi xóa khách sạn!", { icon: "error" });
          }
        });
      }
    });
  }

  function time() {
    var today = new Date();
    var weekday = new Array(7);
    weekday[0] = "Chủ Nhật";
    weekday[1] = "Thứ Hai";
    weekday[2] = "Thứ Ba";
    weekday[3] = "Thứ Tư";
    weekday[4] = "Thứ Năm";
    weekday[5] = "Thứ Sáu";
    weekday[6] = "Thứ Bảy";
    var day = weekday[today.getDay()];
    var dd = today.getDate();
    var mm = today.getMonth() + 1;
    var yyyy = today.getFullYear();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    nowTime = h + " giờ " + m + " phút " + s + " giây";
    if (dd < 10) {
      dd = '0' + dd
    }
    if (mm < 10) {
      mm = '0' + mm
    }
    today = day + ', ' + dd + '/' + mm + '/' + yyyy;
    tmp = '<span class="date"> ' + today + ' - ' + nowTime +
      '</span>';
    document.getElementById("clock").innerHTML = tmp;
    clocktime = setTimeout("time()", "1000", "Javascript");

    function checkTime(i) {
      if (i < 10) {
        i = "0" + i;
      }
      return i;
    }
  }

  $(".edit").click(function () {
	  	var roomID = $(this).closest("tr").find("td:eq(0)").text();
	    var roomType = $(this).closest("tr").find("td:eq(2)").text(); // Lấy loại phòng từ cột thứ ba
	    var price = $(this).closest("tr").find("td:eq(3)").text(); // Lấy giá từ cột thứ tư
	    var statusHTML = $(this).closest("tr").find("td:eq(4)").html(); // Lấy HTML của cột thứ năm
	    var status = statusHTML.includes("Còn trống") ? "available" : "booked"; // Kiểm tra xem phòng có trạng thái còn trống hay không
	    var description = $(this).closest("tr").find("td:eq(5)").text(); // Lấy mô tả từ cột thứ sáu

	    $("#roomId").val(roomID); // Đặt giá trị của input ẩn roomId
	    $("#TypeRoom").val(roomType); // Đặt giá trị của input loại phòng
	    $("#price").val(price); // Đặt giá trị của input giá
	    $("#status").val(status); // Đặt giá trị của select trạng thái
	    $("#description").val(description); // Đặt giá trị của textarea mô tả
	});
	
	function submitForm() {

	    var formData = {
	      roomId: $("#roomId").val(),
	      roomType: $("#TypeRoom").val(),
	      price: $("#price").val(),
	      status: $("#status").val(),
	      description: $("#description").val(),
	    };

	    // Gửi yêu cầu POST đến URL endpoint
	    $.ajax({
	        type: "POST", // Sử dụng phương thức POST
	        url: "/Web_Assignment/admin/room/edit", // URL để gửi yêu cầu
	        data: formData, // Dữ liệu để gửi cùng yêu cầu (các thông tin của phòng)
	        success: function(response) {
	            // Xử lý phản hồi từ máy chủ khi yêu cầu thành công
	            swal("Cập nhật thành công", { icon: "success" }).then((value) => {
	                window.location.href = "/Web_Assignment/admin/room"; // Chuyển hướng đến trang danh sách phòng
	            });
	        },
	        error: function(xhr, status, error) {
	            // Xử lý lỗi khi yêu cầu thất bại
	            swal("cập nhật thất bại", { icon: "error" }).then((value) => {
	                window.location.href = "/Web_Assignment/admin/room"; // Chuyển hướng đến trang danh sách phòng
	            });
	        }
	    });
	  }
	
	
	// lọc phòng
	$(document).ready(function() {
	    
	    $('#secltHotel').change(function() {
	        var selectedHotel = $(this).val();
	        $('#sampleTable tbody tr').each(function() {
	           
	            var hotelName = $(this).find('td:eq(1)').text();
	   
	            if (selectedHotel === 'all' || selectedHotel === hotelName) {
	                
	                $(this).show();
	            } else {

	                $(this).hide();
	            }
	        });
	    });

	    
	    $('#roomType').change(function() {
	   
	        var selectedRoomType = $(this).val();

	
	        $('#sampleTable tbody tr').each(function() {
	           
	            var roomType = $(this).find('td:eq(2)').text();

	            
	            if (selectedRoomType === 'all' || selectedRoomType === roomType) {
	                
	                $(this).show();
	            } else {
	               
	                $(this).hide();
	            }
	        });
	    });
	});

</script>
</body>

</html>

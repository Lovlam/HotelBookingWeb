<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Danh sách nhân viên | Quản trị Admin</title>
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
        <li class="breadcrumb-item active"><a href="#"><b>Danh sách khách sạn</b></a></li>
      </ul>
      <div id="clock"></div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="tile">
          <div class="tile-body">

            <div class="row element-button">
              <div class="col-sm-2">

                <a class="btn btn-add btn-sm" href="/Web_Assignment/admin/hotel/add" title="Thêm"><i class="fas fa-plus"></i>
                  Tạo mới khách sạn</a>
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
            <table class="table table-hover table-bordered js-copytextarea" cellpadding="0" cellspacing="0" border="0"
              id="sampleTable">
              <thead>
                <tr>
                  <th width="10"><input type="checkbox" id="all"></th>
                  <th width="100">ID khách sạn</th>
                  <th width="180">Tên khách sạn</th>
                  <th width="150">Ảnh</th>
                  <th width="200">Địa chỉ</th>
                  <th width="60">Số sao</th>
                  <th width="190">Mô tả</th>
                  <th width="80">Chức năng</th>
                </tr>
              </thead>
              <tbody>
                
				<c:forEach var="hotel" items="${listHotel}">
					<tr>
                  <td width="10"><input type="checkbox" name="check1" value="1"></td>
                  <td>${hotel.hotelID}</td>
                  <td>${hotel.name}</td>
                  <td><img class="img-card-person" src="/Web_Assignment/files/images/${hotel.imageURL}" alt=""></td>
                  <td>${hotel.location} </td>
                  <td>${hotel.stars}</td>
                  <td>${hotel.description}</td>
                  <td class="table-td-center"><button class="btn btn-primary btn-sm trash" type="button"  title="Xóa"
                     ><i class="fas fa-trash-alt" onclick="deleteHotel(${hotel.hotelID})"></i>
                    </button>
                    <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                      data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
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
<div class="modal fade" id="ModalUP" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"
  data-keyboard="false">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <form action="/Web_Assignment/admin/hotel/edit" method="post" enctype="multipart/form-data">
      	<div class="modal-body">
        <div class="row">
          <div class="form-group col-md-12">
            <span class="thong-tin-thanh-toan">
              <h5>Chỉnh sửa thông tin Khách sạn</h5>
            </span>
          </div>
        </div>
        <div class="row">
          <div class="form-group col-md-6">
            <label class="control-label">Tên khách sạn</label>
            <input id="hotelName" name="hotelName" class="form-control" type="text" required>
          </div>
          <div class="form-group col-md-6">
            <label class="control-label">Địa chỉ</label>
            <input id="hotelLocation" name="hotelLocation" class="form-control" type="text" required>
          </div>
          <div class="form-group col-md-6">
            <label for="exampleSelect1" class="control-label">Loại khách sạn</label>
            <select id="hotelStars" name="hotelStars" class="form-control">
              <option value="1">1 sao</option>
              <option value="2">2 sao</option>
              <option value="3">3 sao</option>
              <option value="4">4 sao</option>
              <option value="5">5 sao</option>
            </select>
          </div>
          <div class="form-group col-md-6">
            <label class="control-label">Mô tả</label>
            <textarea id="hotelDescription" name="hotelDescription" class="form-control" rows="3"></textarea>
          </div>
          <div class="form-group col-md-6">
            <img alt="" src="" name="hotelImage" id="hotelImage" style="width: 250px;">
          </div>
          <input id="choicefle" name="hotelImage" class="form-control" type="file" >
        </div>
        <br>
        <br>
        <br>
        <button id="saveButton" class="btn btn-save" type="submit">Lưu lại</button>
        <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
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
  function deleteHotel(hotelID) {
    swal({
      title: "Cảnh báo",
      text: "Bạn có chắc chắn muốn xóa khách sạn này?",
      buttons: ["Hủy bỏ", "Đồng ý"],
    }).then((willDelete) => {
      if (willDelete) {
        // Gửi yêu cầu DELETE đến URL endpoint
        $.ajax({
          url: "/Web_Assignment/admin/hotel/delete?id=" + hotelID,
          success: function(response) {
            // Xử lý phản hồi từ máy chủ
            swal("Đã xóa thành công!", { icon: "success" })
              .then((value) => {
                // Tải lại trang hoặc cập nhật dữ liệu khách sạn
                window.location.href = "/Web_Assignment/admin/hotel";
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

  $(document).ready(function () {
	    // Biến toàn cục để lưu trữ đường dẫn của hình ảnh đã chọn trước đó
	    var selectedImageURL = "";

	    $(".edit").click(function () {
	        // Lấy thông tin từ hàng tương ứng trong bảng
	        var hotelID = $(this).closest("tr").find("td:eq(1)").text();
	        var hotelName = $(this).closest("tr").find("td:eq(2)").text();
	        var hotelLocation = $(this).closest("tr").find("td:eq(4)").text();
	        var hotelStars = $(this).closest("tr").find("td:eq(5)").text();
	        var hotelImageURL = $(this).closest("tr").find("td:eq(3) img").attr("src");
	        var hotelDescription = $(this).closest("tr").find("td:eq(6)").text();
	        var saveButton = $("#saveButton"); // Lấy đối tượng của nút "Lưu lại"

	        // Đặt giá trị hotelID vào thuộc tính formaction của nút "Lưu lại"
	        saveButton.attr("formaction", "/Web_Assignment/admin/hotel/edit?id=" + hotelID);

	        // Đặt giá trị vào các input của modal
	        $("#hotelID").val(hotelID);
	        $("#hotelName").val(hotelName);
	        $("#hotelLocation").val(hotelLocation);
	        $("#hotelStars").val(hotelStars); // Đặt giá trị cho hotelStarsEdit
	        $("#hotelImage").attr("src", selectedImageURL || hotelImageURL); // Sử dụng selectedImageURL nếu có, nếu không sử dụng hotelImageURL
	        $("#hotelDescription").val(hotelDescription);
	        
	        // Mở modal
	        $("#ModalUP").modal("show");
	    });

	    $("#choicefle").change(function(){
	        readURL(this);
	    });

	    // Hiển thị hình ảnh đã chọn và cập nhật selectedImageURL
	    function readURL(input) {
	        if (input.files && input.files[0]) {
	            var reader = new FileReader();
	            reader.onload = function (e) {
	                $('#hotelImage').attr('src', e.target.result);
	                selectedImageURL = e.target.result; // Cập nhật selectedImageURL với đường dẫn mới
	            }
	            reader.readAsDataURL(input.files[0]);
	        }
	    }
	});

</script>

</body>

</html>
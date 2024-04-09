<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quáº£n lÃ½ KhÃ¡ch Sáº¡n - Trang Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 20px;
        }

        .container {
            max-width: 600px;
        }

        .header {
            margin-bottom: 30px;
        }

        .form-label {
            font-weight: 600;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="header text-center">
            <h2>Nháº­p ThÃ´ng Tin KhÃ¡ch Sáº¡n</h2>
        </div>
        <form action="/Web_Assignment/admin/hotel/add" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="hotelName" class="form-label">TÃªn KhÃ¡ch Sáº¡n</label>
                <input type="text" name="hotelName" class="form-control" id="hotelName" required>
            </div>
            <div class="mb-3">
                <label for="location" class="form-label">Vá» TrÃ­</label>
                <input type="text" name="hotelLocation" class="form-control" id="location" required>
            </div>
            <div class="mb-3">
                <label for="stars" class="form-label">Sá» Sao</label>
                <select class="form-select" name="hotelStar" id="stars" required>
                    <option value="">Chá»n sá» sao</option>
                    <option value="1">1 Sao</option>
                    <option value="2">2 Sao</option>
                    <option value="3">3 Sao</option>
                    <option value="4">4 Sao</option>
                    <option value="5">5 Sao</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="imageUrl" class="form-label">URL HÃ¬nh áº¢nh</label>
                <input type="file" name="hotelImage" class="form-control" id="imageUrl">
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">MÃ´ Táº£</label>
                <textarea class="form-control" name="hotelDescription" id="description" rows="3"></textarea>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="isDelete">
                <label class="form-check-label" for="isDelete">ÄÃ¡nh dáº¥u xÃ³a</label>
            </div>
            <button type="submit" class="btn btn-primary">LÆ°u ThÃ´ng Tin</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
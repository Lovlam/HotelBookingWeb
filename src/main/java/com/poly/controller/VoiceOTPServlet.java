package com.poly.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Scanner;

@WebServlet("/sendVoiceOTP")
public class VoiceOTPServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoiceOTPServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accessToken = "YOUR_ACCESS_TOKEN";

        // Số điện thoại nhận OTP
        String toNumber = request.getParameter("toNumber");

        // Tạo mã OTP ngẫu nhiên
        String otpCode = generateOTP();

        // Nội dung tin nhắn voice
        String message = "Your OTP is " + otpCode;

        // Tạo yêu cầu gửi cuộc gọi
        String url = "https://api.stringee.com/v1/call";
        String postData = "from=YOUR_STRINGEE_NUMBER&to=" + toNumber + "&type=voice&message=" + message;

        // Gửi yêu cầu tạo cuộc gọi tới Stringee API
        URL obj = new URL(url);
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();
        con.setRequestMethod("POST");
        con.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        con.setRequestProperty("X-STRINGEE-AUTH", accessToken); // Thêm tiêu đề X-STRINGEE-AUTH

        con.setDoOutput(true);
        OutputStream os = con.getOutputStream();
        os.write(postData.getBytes());
        os.flush();
        os.close();

        // Đọc phản hồi từ Stringee API
        int responseCode = con.getResponseCode();
        if (responseCode == HttpURLConnection.HTTP_OK) {
            // Xử lý phản hồi thành công
            response.getWriter().println("Voice OTP sent successfully!");
        } else {
            // Xử lý lỗi
            response.getWriter().println("Error sending voice OTP!");
        }
    }

    // Hàm tạo mã OTP ngẫu nhiên
    private String generateOTP() {
        StringBuilder otp = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            otp.append((int) (Math.random() * 10));
        }
        return otp.toString();
    }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

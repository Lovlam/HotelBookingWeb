package Utils;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

public class OTPUtils {
	private static final String ACCOUNT_SID = "yAC071107cd2ba487a00b43f52035551553";
    private static final String AUTH_TOKEN = "7d4fdec0c084acaa7d244cfbdd1ff44e";
    private static final String TWILIO_PHONE_NUMBER = "16613497125";
    
    
    public String sendOTP(String phoneNumber) {

        String otp = generateOTP(); 
        
        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
        Message.creator(
            new PhoneNumber(phoneNumber),
            new PhoneNumber(TWILIO_PHONE_NUMBER),
            "Mã xá thực của bạn là: " + otp)
            .create();

    	return otp;
    }
    
    private String generateOTP() {
        StringBuilder otp = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            otp.append((int) (Math.random() * 10));
        }
        return otp.toString();
    }
}

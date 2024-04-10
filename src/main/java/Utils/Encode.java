package Utils;

import java.security.MessageDigest;
//import org.apache.tomcat.util.codec.binary.Base64;

public class Encode {

	public static String toSHA1(String text) {
		String salt = "nssjm;sdboalamss";
		String result = null;		
		text = text + salt;
		try {
			byte[] dataByte = text.getBytes("UTF-8");
			MessageDigest md = MessageDigest.getInstance("SHA-1");
//			result = Base64.encodeBase64String(md.digest(dataByte));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}

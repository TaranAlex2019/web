package ua.nure.taran.Encrypting;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by Александр Таран on 26.02.2019.
 */
public class EncryptingPass {
    public static String getMD5(String password){
        byte[] passwordMD5 = null;
        try {
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            passwordMD5 = md5.digest(password.getBytes());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        StringBuilder stringBuilder = new StringBuilder();
        for(byte b : passwordMD5){
            stringBuilder.append(String.format("%02X ", b));
        }
        String passwordInMD5 = stringBuilder.toString().trim();
        return passwordInMD5;
    }
}

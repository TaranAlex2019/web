package ua.nure.taran.mail;

import ua.nure.taran.bins.User;
import ua.nure.taran.database.Connect;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.IOException;
import java.util.Formatter;
import java.util.Properties;

/**
 * Created by Александр Таран on 15.01.2019.
 */
public class SendMail {
    private static String url = "http://Localhost:8080/ActivatingUser?id=%s";

    public static void SendActivationMessage(User user) throws IOException, MessagingException {
        final Properties properties = new Properties();
        properties.load(SendMail.class.getClassLoader().getResourceAsStream("ua/nure/taran/properties/mail.properties"));
        Session mailSession = Session.getDefaultInstance(properties);
        MimeMessage message = new MimeMessage(mailSession);
        message.setFrom(new InternetAddress("dotkaTaran"));
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(user.getMail()));
        message.setSubject("Подтверждение регистрации");

        Formatter formatter = new Formatter();
        formatter.format(url,user.getId());
        url = formatter.toString();

        message.setText("Уважаемый " + user.getName() + " " + user.getSecondName() + "! Для завершения регистрации на " + properties.getProperty("site") + " перейдите по ссылке " +  url + "!");

        Transport transport = mailSession.getTransport();
        transport.connect(properties.getProperty("mail.smtp.host"), "dotkaTaran","HNURE.MY2017");
        transport.sendMessage(message, message.getAllRecipients());
        formatter.close();
    }
}
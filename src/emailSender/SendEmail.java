package emailSender;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.internet.MimeMessage;

public class SendEmail {

    public static void sendVerificationMail (String user, String name, String verificationKey){
        try{
        	System.out.println("Da VLIZA");
            String host ="smtp.gmail.com" ;
            String sender = "blablacarsbg@gmail.com";
            String pass = "ittalents";
            String from = "blablacarsbg@gmail.com";
            String link = "http://localhost:8080/BlaBlaCars/verify?email=" +
            				user + "&verificationKey=" + verificationKey;
            String subject = "Confirm your email address on BlaBlaCars";
            String messageText = "Hi " + name + ",\nYou've created a new BlaBlaCars account using " + user 
            		+ " as your email address. Please click on the link below to verify your account." 
            		+ "\n" + link;
            boolean sessionDebug = false;

            Properties props = System.getProperties();

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");

            //java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(user)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject); msg.setSentDate(new Date());
            msg.setText(messageText);

           Transport transport=mailSession.getTransport("smtp");
           transport.connect(host, sender, pass);
           transport.sendMessage(msg, msg.getAllRecipients());
           transport.close();
           System.out.println("message send successfully");
        }catch(Exception ex)
        {
            System.out.println("Not sent" + ex.getMessage());
        }

    }
}

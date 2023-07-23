import java.io.File;
import java.io.IOException;
import java.util.Properties;
import java.util.Scanner;

import javax.mail.AuthenticationFailedException;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;


public class SendMailWithAttatchment {

	public void Send() throws IOException,AuthenticationFailedException {
		
		
	
	
		Scanner scan =new Scanner(System.in);
		System.out.println("enter the from mail for authentication");
		final String from =scan.nextLine();
		
		
		System.out.println("enter the from password for authentication");
		final String password=scan.nextLine();
		System.out.println("enter the to mail for authentication");
		
		
		
		String to=scan.nextLine();
		
		
		Properties prop = new Properties();

			prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
			prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
			prop.put("mail.smtp.auth", "true");
			prop.put("mail.smtp.starttls.enable", "true");
			prop.put("mail.smtp.host", "smtp.gmail.com");
			prop.put("mail.smtp.port", "587");
			
			
			
			
			

		Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
		
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		});
		 

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject("Message from Upendar");

			String msg = "This mail is sent by Upendar";

			MimeBodyPart mimeBodyPart = new MimeBodyPart();
			mimeBodyPart.setContent(msg, "text/html");

			Multipart multipart = new MimeMultipart();
			multipart.addBodyPart(mimeBodyPart);

			MimeBodyPart attachmentBodyPart = new MimeBodyPart();
			attachmentBodyPart.attachFile(new File("D:\\Upendar gallery.JPG"));
			multipart.addBodyPart(attachmentBodyPart);
			message.setContent(multipart);
           
			 
			
			
			Transport.send(message);

			System.out.println("Mail successfully sent..");
			

		} catch (MessagingException e) {
			e.printStackTrace();
			
			
			

		}
	}

	

}
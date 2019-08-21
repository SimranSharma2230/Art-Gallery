package utility;



import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
 
public class AutoGenMail {
	String to="";
	String password="";
	String from="";
	String subject="";
	String msg="";
	public AutoGenMail(String to, String subject, String msg)
	{
      		this.from = "simransharma2230@gmail.com";
		this.password = "8449127125";

		this.to=to;
		this.subject = subject;
		this.msg=msg;
		mail();
	}
	
	public AutoGenMail(String from, String pass, String to, String subject, String msg)
	{
		this.from = from;
		this.password = pass;
		this.to=to;
		this.subject = subject;
		this.msg=msg;
		mail();
	}
	private void mail() {
 
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		  });

		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(msg);
 

			Transport.send(message);
 
			System.out.println("Done");
 
		} catch (MessagingException e) {
			System.out.println("Error in sending mail");
			System.out.println("Error : " + e);
			//throw new RuntimeException(e);
			
		}
	}
}
package com.JosephMartinez.Portfolio.Services;

import java.util.Properties;



//	 Java program to send email 
	  
//import java.util.*; 
//import javax.mail.*; 
//import jakarta.mail.internet.*;

import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

//import jakarta.activation.*; 
import jakarta.mail.Session; 
import jakarta.mail.Transport; 

public class EmailService {
	  
	
   public static void main(String [] args)  
   {     
      // email ID of Recipient. 
      String recipient = "recipient@gmail.com"; 
  
      // email ID of  Sender. 
      String sender = "sender@gmail.com"; 
  
      // using host as localhost 
      String host = "127.0.0.1"; 
  
      // Getting system properties 
      Properties properties = System.getProperties(); 
  
      // Setting up mail server 
      properties.setProperty("mail.smtp.host", host); 
  
      // creating session object to get properties 
      Session session = Session.getDefaultInstance(properties); 
  
      try 
      { 
         // MimeMessage object. 
         MimeMessage message = new MimeMessage(session); 
  
         // Set From Field: adding senders email to from field. 
         message.setFrom(new InternetAddress(sender)); 
  
         // Set To Field: adding recipient's email to from field. 
         message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); 
  
         // Set Subject: subject of the email 
         message.setSubject("This is Subject"); 
  
         // set body of the email. 
         message.setText("This is a test mail"); 
  
         // Send email. 
         Transport.send(message); 
         System.out.println("Mail successfully sent"); 
      } 
      catch (MessagingException mex)  
      { 
         mex.printStackTrace(); 
      } 
   } 
	
}

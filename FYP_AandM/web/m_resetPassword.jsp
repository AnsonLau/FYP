<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="db.UserDB, bean.UserBean" %>
<%
    UserDB db = new UserDB("jdbc:mysql://ct9a.ddns.net:3334/mydb", "FYP", "FYP123456789");
    UserBean bean = (UserBean) request.getAttribute("bean");
    String mid = bean.getUserID();
    String newPswd = (String) request.getAttribute("pswd");
    String result = "";
    boolean update = false;
    if(db.resetPswd(mid, newPswd)){
        update = true;
    }
    // Recipient's email ID needs to be mentioned.
    String to = bean.getEmail();

    // Sender's email ID needs to be mentioned
    String from = "absfyp@gmail.com";

    // Get system properties object
    Properties properties = System.getProperties();
    // Setup mail server
    properties.setProperty("mail.smtp.host", "smtp.gmail.com");
    properties.setProperty("mail.smtp.socketFactory.port", "465");
    properties.setProperty("mail.smtp.socketFactory.class",
            "javax.net.ssl.SSLSocketFactory");
    properties.setProperty("mail.smtp.auth", "true");
    properties.setProperty("mail.smtp.port", "465");

    // Get the default Session object.
    Session mailSession = Session.getInstance(properties, new javax.mail.Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(
                    "absfyp@gmail.com", "114514810");// Specify the Username and the PassWord
        }
    });

    try {
        if (update) {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(mailSession);
            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));
            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO,
                    new InternetAddress(to));
            // Set Subject: header field
            message.setSubject("Your ABS password have been reset");
            // Now set the actual message
            message.setText("Dear "+bean.getUserName()+",\n\nYour password have been reset to " + newPswd + ".\nPlease contact us at 2338-2338 if you have any question.\n\nThanks!\nABS Admin");
            // Send message
            Transport.send(message);
            result = "Sent message successfully....";
        }else{
            
        }
    } catch (MessagingException mex) {
        mex.printStackTrace();
        result = "Error: unable to send message....";
    }
%>
<html>
    <head>
        <title>Send Email using JSP</title>
    </head>
    <body>
    <center>
        <h1>Send Email using JSP</h1>
    </center>
    <p align="center">
        <%
            if(update){
                out.print("Mail sent, redirect to administration page in 5 seconds.");
            }
        %>
        <meta http-equiv="refresh" content="5; url=m_memberAdm.jsp" />
    </p>
</body>
</html>
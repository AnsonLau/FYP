<%-- 
    Document   : m_memberAdm
    Created on : Mar 7, 2016, 6:23:50 PM
    Author     : Anson
--%>
<%@ page import="db.UserDB, bean.UserBean" %>
<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/detail.css" rel="stylesheet" type="text/css">


        <title>JSP Page</title>
        <script src="js/jquery-1.11.1.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#main").removeClass('tabs pageActive tab_current');
                $("#client").addClass('tabs pageActive tab_current');
                $("#product").removeClass('tabs pageActive tab_current');
                $("#order").removeClass('tabs pageActive tab_current');
            });
        </script>
    </head>
    <body>
        <jsp:include page="m_navigation.jsp" />
        <%
            UserDB db = new UserDB("jdbc:mysql://ct9a.ddns.net:3334/mydb","FYP","FYP123456789");
        ArrayList<UserBean> beans = db.queryUser();
        out.println("<div class=\"flex-container\">");
            for (int i = 0; i < beans.size(); i++) {
                out.println("<div class=\"flex-item\">");
                out.println("<div class=\"hotel_detail\" data-myorder=\"\"><input type=\"hidden\" value=\"\"/>"
                        + "<div class=\"right-detail\"><center><h4>User Details</h4></center>"
                        + "<div class=\"hotel_name\">User ID: "+beans.get(i).getUserID()+"</div>"
                        + "<div class=\"hotel_address\">User Name: "+beans.get(i).getUserName()+"</div>"
                        + "<div class=\"hotel_tel\">First Name: "+beans.get(i).getFirstName_eng()+"</div>"
                        + "<div class=\"hotel_SPrice\">Email: "+beans.get(i).getEmail()+"</div>"
                        + "<a href=\"rp?id="+beans.get(i).getUserID()+"\" class=\"button\">Reset Password</a>"
                        + "</div></div>");
                
            out.println("</div>");
            }
            out.println("</div>");
        %>
    </body>
</html>

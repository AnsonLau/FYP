<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.UserBean, db.UserDB" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Administration System</title>
    
    <link href="css/loginform.css" rel="stylesheet" type="text/css">
    <link href="css/manager.css" rel="stylesheet" type="text/css">
    <script src="js/jquery-1.11.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#main").addClass('tabs pageActive tab_current');
            $("#client").removeClass('tabs pageActive tab_current');
            $("#product").removeClass('tabs pageActive tab_current');
            $("#order").removeClass('tabs pageActive tab_current');
        });
    </script>
</head>
<body>
    
<jsp:include page="m_navigation.jsp" />
<%
    UserBean ab = (UserBean) session.getAttribute("adminInfo");
    if(ab == null) {
        out.println("<div id=\"loginformheader\"><h1 id=\"hh1\" style=\"color:white;\">Welcome!</h1></div><div id=\"login\">"
                + "<form action=\"lc_a?action=authenticate\" method=\"post\" >"
                + "Admin ID: <input type=\"text\" name=\"admin_id\"/><br/>"
                +"<br>"
                + "Password: <input type=\"password\"  name=\"password\"/>"
                + "<input id=\"loginbtn\" type=\"submit\" value=\"Login\" />"
                + "</form>"
                + "</div>");
    }else{
        out.println("<div class=\"news\"><h1>  </h1>Logged in as " + ab.getUserName());
        out.println("<h1>What's News</h1>");
        UserDB db = new UserDB("jdbc:mysql://1130l.ddns.net/mydb","FYP","FYP123456789");
        ArrayList<UserBean> beans = db.queryUserUnauthenicate();
        if(beans.size()!=0){
            out.println(beans.size()+" member(s) waiting for authenticate, click<a href=\"m_client?action=verify\"> here</a> to authenticate");
        }else{
             out.println("All the members have been authenticate");
        }
        out.println("</div>");
    }
%>
</body>
</html>

<%-- 
    Document   : m_dis_addForm
    Created on : Jan 16, 2016, 2:49:23 PM
    Author     : Anson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/manager.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <jsp:include page="m_navigation.jsp" />
    <body>
        <div id="content" class="SITE_STRUCTURE content">
            <div style="display: block;" class="tabs_item" id="order_detail">
                <div id="message3">
                    <form action="dc_a?action=add" method="post">
                        District Name: <input type="text" name="d_name"/><br/>
                        Previous: <input type="number" name="beside"/><br/>
                        <button type="submit">Add District</button>
                        <input type="reset" value="Reset Column"/>
                        <button type="submit" formaction="m_district.jsp">Back District Menu</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

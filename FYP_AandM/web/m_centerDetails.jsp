<%-- 
    Document   : m_centerDetails
    Created on : Jan 16, 2016, 1:12:22 PM
    Author     : Anson
--%>
<%@ page import="bean.CommunityCenterBean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link href="css/form_css.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
         <script type="text/javascript">
            $(document).ready(function () {
                $("#main").removeClass('tabs pageActive tab_current');
                $("#client").removeClass('tabs pageActive tab_current');
                $("#order").addClass('tabs pageActive tab_current');
            });
        </script>
    </head>
    <body>
        <jsp:include page="m_navigation.jsp" />
        <div id="content" class="SITE_STRUCTURE content">
            <div style="display: block;" class="tabs_item" id="order_detail">
                <div id="message3">
                    <body>
                        <%
                            CommunityCenterBean beans = (CommunityCenterBean) request.getAttribute("activities");
                            out.println("<form method='post' action='cc_a?action=update' class='basic-grey'>");
                            out.println("<h1>Update: "+beans.getName()+"</h1>");
                            out.println("<input type=\"hidden\" name=\"hidden\" value=\"" + beans.getCommunityCenterID() + "\"/>");
                            out.println("Community Center ID: " + beans.getCommunityCenterID() + "<br/>");
                            out.println("District ID: <input type=\"text\" name=\"d_no\" value=\"" + beans.getDistrictID() + "\" /><br/>");
                            out.println("Community Center Name: <input type=\"text\" name=\"c_name\" value=\"" + beans.getName() + "\" /><br/>");
                            out.println("Address: <textarea name=\"address\" cols='40'rows='5'>" + beans.getAddress() + "</textarea><br/>");
                            out.println("Tel: <input type=\"text\" name=\"tel\" value=\"" + beans.getTel() + "\" /><br/>");
                            out.println("Fax: <input type=\"text\" name=\"fax\" value=\"" + beans.getFax() + "\" /><br/>");
                            out.println("Email: <input type=\"text\" name=\"email\" value=\"" + beans.getEmail() + "\" /><br/>");
                            out.println("Info: <input type=\"text\" name=\"info\" value=\"" + beans.getInfo() + "\" /><br/>");
                            out.println("<button type=\"submit\" id=\"button\">Submit Update</button>");
                            out.println("<button type=\"submit\" id=\"button\" formaction=\"cc_a?action=show\">Back to list</button>");
                            out.println("</form>");
                        %>
                    </body>
                </div>
            </div>
        </div>
    </body>
</html>

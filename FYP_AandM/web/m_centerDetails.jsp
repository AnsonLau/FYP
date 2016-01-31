<%-- 
    Document   : m_centerDetails
    Created on : Jan 16, 2016, 1:12:22 PM
    Author     : Anson
--%>
<%@ page import="bean.CommunityCenterBean, bean.DistrictBean, db.DistrictDB" %>
<%@ page import="java.util.ArrayList" %>
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
        <script>
            function phonenumber()
            {
                var inputtxt = document.getElementById("tel");
                var phoneno = /^\d{8}$/;
                if ((inputtxt.value.match(phoneno))
                {
                    return true;
                }
                else
                {
                    alert("Phone Number Formating error, please check.");
                    return false;
                }
            }
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
                            DistrictDB db = new DistrictDB("jdbc:mysql://1130l.ddns.net/mydb", "FYP", "FYP123456789");
                            ArrayList<DistrictBean> dbean = db.queryDistrict();
                            out.println("<form method='post' action='cc_a?action=update' class='basic-grey' onsubmit=\"return phonenumber()\">");
                            out.println("<h1>Update: " + beans.getName() + "</h1>");
                            out.println("<input type=\"hidden\" name=\"hidden\" value=\"" + beans.getCommunityCenterID() + "\"/>");
                            out.println("Community Center ID: " + beans.getCommunityCenterID() + "<br/>");

                            out.println("Community Center Name: <input type=\"text\" name=\"c_name\" value=\"" + beans.getName() + "\" required /><br/>");
                            out.println("Address: <textarea name=\"address\" cols='40'rows='5' required >" + beans.getAddress() + "</textarea><br/>");
                            out.println("District: <select name=\"d_no\">");
                            out.println("<optgroup label=\"Hong Kong Island\">");
                            for (int i = 101; i < 105; i++) {
                                if (beans.getDistrictID().equals(Integer.toString(i))) {
                                    out.println("<option value='" + beans.getDistrictID() + "' selected='selected'>" + dbean.get(i-101).getName() + "</option>");
                                }
                                
                                else
                                out.println("<option value='" + i + "'>" + dbean.get(i-101).getName() + "</option>");

                            }
                            out.println("</optgroup>");
                            out.println("<optgroup label=\"Kowloon\">");
                            for (int i = 105; i <110; i++) {
                                if (beans.getDistrictID().equals(Integer.toString(i))) {
                                    out.println("<option value='" + i + "' selected='selected'>" + dbean.get(i-101).getName() + "</option>");
                                }
                                else
                                out.println("<option value='" + i  + "'>" + dbean.get(i-101).getName() + "</option>");

                            }
                            out.println("</optgroup>");
                            out.println("<optgroup label=\"New Territories\">");
                            for (int i = 110; i < 119; i++) {
                                if (beans.getDistrictID().equals(Integer.toString(i))) {
                                    out.println("<option value='" + i + "' selected='selected'>" + dbean.get(i-101).getName() + "</option>");
                                }
                                else
                                out.println("<option value='" + i+ "'>" + dbean.get(i-101).getName() + "</option>");

                            }
                            out.println("</optgroup>");
                            out.println("</select><br/>");

                            out.println("Tel: <input id=\"tel\" maxlength=\"8\" type=\"text\" name=\"tel\" value=\"" + beans.getTel() + "\" required /><br/>");
                            out.println("Fax: <input type=\"text\" maxlength=\"8\" name=\"fax\" value=\"" + beans.getFax() + "\" required /><br/>");
                            out.println("Offical Email: <input type=\"email\" name=\"email\" value=\"" + beans.getEmail() + "\" /><br/>");
                            out.println("Infomation: <input type=\"text\" name=\"info\" value=\"" + beans.getInfo() + "\" required /><br/>");
                            out.println("<button type=\"submit\" id=\"button\">Submit Update</button>");
                            out.println("<button type=\"submit\" id=\"button\" formaction=\"cc_a?action=show\">Cancel</button>");
                            out.println("</form>");
                        %>
                    </body>
                </div>
            </div>
        </div>
    </body>
</html>

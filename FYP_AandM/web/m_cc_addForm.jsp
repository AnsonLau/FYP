<%-- 
    Document   : m_dis_addForm
    Created on : Jan 16, 2016, 2:49:23 PM
    Author     : Anson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.DistrictBean, bean.UserBean" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/manager.css" rel="stylesheet" type="text/css">
        <link href="css/form_css.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <jsp:include page="m_navigation.jsp" />
    <body>
        <%
            UserBean ab = (UserBean) session.getAttribute("adminInfo");
            if (ab == null) {
                response.sendRedirect("notLoggedInYet.jsp");
            }
        %>
        <%
            ArrayList<DistrictBean> beans = (ArrayList<DistrictBean>) request.getAttribute("district");
        %>
        <div id="content" class="SITE_STRUCTURE content">
            <div style="display: block;" class="tabs_item" id="order_detail">
                <div id="message3">
                    <form action="cc_a?action=add" method="post" class="basic-grey">
                        <h1>New Community Center</h1>
                        Community Center Name: <input type="text" name="cc_name" required/><br/>
                        Address: <textarea name="address" col="5" required></textarea><br/>
                        District: <select name="d_id">
                            <optgroup label="Hong Kong Island">
                                <option value='101'>Central & Western District</option>
                                <option value='102'>Wanchai District</option>
                                <option value='103'>Eastern District</option>
                                <option value='104'>Southern District</option>
                            </optgroup>
                            <optgroup label="Kowloon">
                                <option value='105'>Yau Tsim Mong District</option>
                                <option value='106'>Sham Shui Po District</option>
                                <option value='107'>Kuwn Tong District</option>
                                <option value='108'>Kowloon City District</option>
                                <option value='109'>Wong Tai Sin District</option>
                            </optgroup>  
                            <optgroup label="New Territories">
                                <option value='110'>Tsuen Wan District</option>
                                <option value='111'>Kwai Tsing District</option>
                                <option value='112'>Sha Tin District</option>
                                <option value='113'>Tai Po District</option>
                                <option value='114'>Sai Kung District</option>
                                <option value='115'>Northern District</option>
                                <option value='116'>Tuen Mun District</option>
                                <option value='117'>Yuen Long District</option>
                                <option value='118'>Islands District</option>
                            </optgroup>
                        </select><br/>
                        Tel: <input type="text" maxlength="8" name="tel" required /><br/>
                        Fax: <input type="text" maxlength="8" name="fax" required /><br/>
                        Official Email: <input type="email" name="email" required /><br/>
                        Information: <textarea name="info" required ></textarea><br/>
                        <button id="button" type="submit">Add Community Center</button>
                        <input id="button" type="reset" value="Reset Information"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>


<%@ page import="bean.UserBean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administration System</title>
        <link href="css/manager.css" rel="stylesheet" type="text/css">
        <script src="js/jquery-1.11.1.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#main").removeClass('tabs pageActive tab_current');
                $("#client").addClass('tabs pageActive tab_current');
                $("#order").removeClass('tabs pageActive tab_current');
            });
        </script>
    </head>
    <body>
        <%
            UserBean ab = (UserBean) session.getAttribute("adminInfo");
            if (ab == null) {
                response.sendRedirect("notLoggedInYet.jsp");
            }
        %>    
        <jsp:include page="m_navigation.jsp" />
        <div id="content2" class="">
            <div style="display: block;" class="tabs_item" id="select_main">
                <div class="select_main" >
                    <a href="m_client?action=verify">
                        <div class="item_div" id="item_client">
                            <div class="item_border">
                                <div class="item_word_border">
                                    <div class="item_word">
                                        <h2 style="font-size: 30px;">Verify Member</h2>
                                    </div>
                                    <div class="item_word item_word_displayTime">
                                        <span</span><br/>
                                        <span></span><br/>
                                        <span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                    <a href="">
                        <div class="item_div" id="">
                            <div class="item_border">
                                <div class="item_word_border">
                                    <div class="item_word">
                                        <h2 style="font-size: 30px;">Member Administration</h2>
                                    </div>
                                    <div class="item_word item_word_displayTime">
                                        <span></span><br/>
                                        <span></span><br/>
                                        <span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>

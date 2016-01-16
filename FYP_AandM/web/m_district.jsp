<%-- 
    Document   : m_district
    Created on : Jan 16, 2016, 2:04:33 PM
    Author     : Anson
--%>

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
                $("#main").addClass('tabs pageActive tab_current');
                $("#client").removeClass('tabs pageActive tab_current');
                $("#product").removeClass('tabs pageActive tab_current');
                $("#order").removeClass('tabs pageActive tab_current');
            });
        </script>
    </head>
    <body>
        <jsp:include page="m_navigation.jsp" />
        <div id="content" class="SITE_STRUCTURE">
            <div style="display: block;" class="tabs_item" id="select_main">
                <div class="select_main">
                    <a href="m_dis_addForm.jsp">
                        <div class="item_div" id="item_client">
                            <div class="item_border">
                                <div class="item_word_border">
                                    <div class="item_word">
                                        <h2 style="font-size: 30px;">Add District</h2>
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
                    <a href="m_order?action=maintain">
                        <div class="item_div" id="item_order">
                            <div class="item_border">
                                <div class="item_word_border">
                                    <div class="item_word">
                                        <h2 style="font-size: 30px;">Update District Details</h2>
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

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Administration System</title>
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
<%--
    AccountBean ab = (AccountBean) session.getAttribute("adminInfo");
    if(ab == null) {
        response.sendRedirect("notLoggedInYet.jsp");
    }
--%>
<jsp:include page="m_navigation.jsp" />
<div id="content" class="SITE_STRUCTURE">
    <div style="display: block;" class="tabs_item" id="select_main">
        <div class="select_main">
            <a href="m_client?action=verify">
                <div class="item_div" id="item_client">
                    <div class="item_border">
                        <div class="item_word_border">
                            <div class="item_word">
                                <h2 style="font-size: 50px;">Update User States</h2>
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
            <a href="ac_a?action=show">
                <div class="item_div" id="item_product">
                    <div class="item_border">
                        <div class="item_word_border">
                            <div class="item_word">
                                <h2 style="font-size: 50px;">Product</h2>
                            </div>
                            <div class="item_word item_word_displayTime">
                                <span>- &nbsp&nbspAdd product&nbsp&nbsp</span><br/>
                                <span>- &nbsp&nbspEdit product&nbsp&nbsp</span><br/>
                                <span>- Delete product</span>
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
                                <h2 style="font-size: 50px;">Order</h2>
                            </div>
                            <div class="item_word item_word_displayTime">
                                <span>- Update order status</span><br/>
                                <span>- &nbspObtain a report for&nbsp</span><br/>
                                <span>incomplete orders</span>
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

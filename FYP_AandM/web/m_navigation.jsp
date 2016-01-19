
<html>
<head>
    <link href="css/manager.css" rel="stylesheet" type="text/css">
</head>
<body>
<%--
    AccountBean ab = (AccountBean) session.getAttribute("adminInfo");
    if(ab == null) {
        response.sendRedirect("notLoggedInYet.jsp");
    }
--%>
<div id="topDIV_div">
    <ul id="topDIV_ul" class="SITE_STRUCTURE">
        <li class="web_title">Administration System</li>
    </ul>
</div>
<div style="position: absolute;" id="top_nav">
    <ul id="nav_bar" class="SITE_STRUCTURE">
        <li style="float: right;">
            <ul id="nav_items">
                <a href="manager.jsp">
                    <li class="tabs pageActive tab_other" id="main">
                        <div class="nav_word">Main</div>
                    </li>
                </a>
                <a href="m_client?action=verify">
                    <li class="tabs pageActive tab_other" id="client">
                        <div class="nav_word">User</div>
                    </li>
                </a>
                <a href="ac_a?action=show">
                    <li class="tabs pageActive tab_other" id="product">
                        <div class="nav_word">Activities</div>
                    </li>
                </a>
                <a href="cc_a?action=show">
                    <li class="tabs pageActive tab_other" id="order">
                        <div class="nav_word">Community Center</div>
                    </li>
                </a>
                <a href="m_district.jsp">
                    <li class="tabs pageActive tab_other" id="order">
                        <div class="nav_word">District</div>
                    </li>
                </a>
                <a href="lc_a?action=logout">
                    <li class="tabs pageActive tab_other" id="logout">
                        <div class="nav_word">Logout</div>
                    </li>
                </a>
            </ul>
        </li>
    </ul>
</div>
</body>
</html>

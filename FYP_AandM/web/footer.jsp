<script type="text/javascript" src="<%=getServletContext().getContextPath() + "/"%>js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=getServletContext().getContextPath() + "/"%>js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=getServletContext().getContextPath() + "/"%>js/jquery.js"></script>
<script type="application/javascript">
    $(function () {      
    $("#log_status").append("<div style=\"background-color:AntiqueWhite;font-family: Monospace\"><div>"+"<%=session.getAttribute("status")%>"+"</div></div>");
    });

</script>
<div style="overflow: scroll;width:100%;display: block">
    <br><br>
  
</div>

<div id="log_status" style="overflow: scroll;width:50%;height:300px;background-color:Lavender;float:left;">
    <h4>Log Console</h4>
</div>




<div style="float:right;overflow: scroll;width:50%;height:300px;background-color:wheat">

    <jsp:include page="<%= "/checkSession.jsp"%>"></jsp:include> 
</div>
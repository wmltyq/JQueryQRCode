<%--
  Created by IntelliJ IDEA.
  User: WangMing
  Date: 2018/4/16
  Time: 1:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>生成二维码</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.qrcode.min.js"></script>
  </head>
  <body>
  <form action="" method="get">
    <input type="text" name="codeStr">
    <input type="submit" value="生成二维码">
  </form>
  生成的二维码如下：<br/>
  <div id="qrcode"></div>
  <script type="text/javascript">
      <%
        String codeStr = request.getParameter("codeStr");
        pageContext.setAttribute("codeStr", codeStr);
      %>
      console.log("${codeStr}");
      $('#qrcode').qrcode("${codeStr}")
  </script>
  </body>
</html>

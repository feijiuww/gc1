<%--
  Created by IntelliJ IDEA.
  User: 29027
  Date: 2022/9/23
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
   <%--这是登录页面,页面查看源代码时不会出现jsp注释--%>
   <!--这是html的注释，页面查看源代码时能看到-->
    <%=3*4%>
   <%--JSP表达式，页面中输出表达式的值 --%>
    <br>
    <%!
        int a = 10;
    %>
   <%-- JSP声明：声明变量和方法，作为JSP生成的Servlet的成员变量和成员方法--%>
    <%=a%>
    <br/>
    <%
        if(a>10)
          out.print("a>10");
        else out.print("a<=10");
    %>
   <%--JSP脚本：Java打吗，作为JSP生成的Servelet的service方法中的内容--%>
    <%@include file="a.jsp"%>
    <%--include指定：可以包含另一个jsp页面内容--%>
   <jsp:include page="b.jsp"></jsp:include>
    <%--include动作，也可以包含另一警示牌页面的内容--%>
   <%-- <jsp:forward page="login.html"></jsp:forward>--%>
</body>
</html>

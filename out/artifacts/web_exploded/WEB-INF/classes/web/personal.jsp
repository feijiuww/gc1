<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>个人中心</title>
  <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/pricing/">



  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">



  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }
  </style>
  <link href="css/pricing.css" rel="stylesheet">
</head>
<body>
<%
  //判断用户是否登录，如果未登录则跳转到login.jsp页面进行登录，如果已登录，用户可以访问该页面
  String username =(String)session.getAttribute("user");
  if(username==null){

    request.setAttribute("errMsg","您未登录，请登录后再进入个人中心界面");
    //response.sendRedirect("login2.jsp");//不会携带request或response中存储的信息
    request.getRequestDispatcher("login2.jsp").forward(request,response);
  }

%>
<div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom shadow-sm">
  <h5 class="my-0 mr-md-auto font-weight-normal">个人中心</h5>
  <a class="btn" href="#">${sessionScope.user}</a>
  <a class="btn btn-outline-primary" href="#">退出登录</a>
</div>
<div class="container">
  <div class="card-deck mb-3 text-center">
    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">收藏</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">233333</h1>

        <button type="button" class="btn btn-lg btn-block btn-outline-primary">查看</button>
      </div>
    </div>
    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">关注</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">564</h1>

        <button type="button" class="btn btn-lg btn-block btn-primary">查看</button>
      </div>
    </div>
    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">评论</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">34444</h1>

        <button type="button" class="btn btn-lg btn-block btn-primary">查看</button>
      </div>
    </div>
  </div>
  <div class="card-deck mb-3 text-center">
    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">历史</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">34444</h1>

        <button type="button" class="btn btn-lg btn-block btn-primary">查看</button>
      </div>
    </div>
    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">消息</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">34444</h1>

        <button type="button" class="btn btn-lg btn-block btn-primary">查看</button>
      </div>
    </div>
    <div class="card mb-4 shadow-sm">
      <div class="card-header">
        <h4 class="my-0 font-weight-normal">点赞</h4>
      </div>
      <div class="card-body">
        <h1 class="card-title pricing-card-title">34444</h1>

        <button type="button" class="btn btn-lg btn-block btn-primary">查看</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>

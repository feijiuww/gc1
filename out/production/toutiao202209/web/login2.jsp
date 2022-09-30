<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/sign-in/">

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
        .form-signin input[type='password']{
            margin-bottom: 0 !important;
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">
</head>
<body class="text-center">
<!--<form action="login" method="post">
    用户名：<input type="text" name="username"><br/>
    密码：<input type="password" name="password"><br/>
    <input type="submit" value="提交">
</form>-->
<form class="form-signin" action="login" method="post">

    <h1 class="h3 mb-3 font-weight-normal">请登录</h1>
    <label for="username" class="sr-only">用户名</label>
    <input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名" required autofocus>
    <label for="password" class="sr-only">密码</label>
    <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" required>
    <label for="checkcode" class="sr-only">验证码</label>
    <input type="text" id="checkcode" name="checkcode" class="form-control" placeholder="请输入验证码" required>
    <img src="CheckCode" alt="点击换一张" id="img" >
    <div class="checkbox mb-3">
        <label>
            <input type="checkbox" value="remember-me"> 记住密码
        </label>
    </div>
    <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
    <div style="color: red;">
        <%
            /*String errMsg = (String)request.getAttribute("errMsg");
            if(errMsg!=null){
                out.println(errMsg);
            }*/

        %>
        ${requestScope.errMsg}
    </div>
    <p class="mt-5 mb-3 text-muted">&copy; 2022</p>
</form>
<script>
    var img = document.getElementById("img");
    img.onclick = function (){
        this.src = 'CheckCode?f='+new Date();
    }
</script>
</body>
</html>

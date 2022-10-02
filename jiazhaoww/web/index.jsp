<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/album/">


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
        .container{
            margin-top: 15px;
            margin-bottom: 30px;
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="css/album.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="#">资讯页面</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/jiazhao/index">首页</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active"  href="/jiazhao/index">资讯</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">社区</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="/jiazhao/PersonalServlet" >个人中心</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#" >我的考试</a>
            </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">

            <input class="form-control mr-sm-2" type="text" placeholder="搜索资讯" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">
                <c:choose>
                    <c:when test="${user!=null}">${user}</c:when>
                    <c:otherwise><a href="login2.jsp">登录</a></c:otherwise>
                </c:choose>
            </button>

        </form>
    </div>
</nav>

<main role="main" class="container">



    <div class="album py-5 bg-light">
        <div class="container">

            <div class="row">
                <c:forEach items="${list}" var="discussion">
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img class="bd-placeholder-img card-img-top" width="100%" height="225" src="/pic/${discussion.image}"></img>

                        <div class="card-body">
                            <p class="card-text">${discussion.title}</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">
                                        <a href="detail">查看</a>
                                    </button>
                                </div>
                                <small class="text-muted">${discussion.time} </small>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>

            </div>
        </div>
    </div>

</main>

<footer class="text-muted">
    <div class="container">

    </div>
</footer>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="js/bootstrap.bundle.min.js"></script>

</body>
</html>

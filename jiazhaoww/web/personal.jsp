<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <meta name="generator" content="Hugo 0.80.0">
  <title>个人中心</title>

  <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/navbar-fixed/">



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

    .container{
       margin-top: 15px;
       margin-bottom: 30px;
    }
    .banner{
      margin-top: 40px;
      padding: 0 45px;
      display: flex;
    }
    .banner21{
      margin-top: 20px;
    }
    .banner22{
      margin-top: 20px;
    }
    .banner2{
      margin-left:30px;
    }


  </style>


  <!-- Custom styles for this template -->
  <link href="navbar-top-fixed.css" rel="stylesheet">
  <link href="form-validation.css" rel="stylesheet">
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <a class="navbar-brand" href="#">个人中心</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarCollapse">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="/jiazhao/index">首页</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/jiazhao/index">资讯</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">社区</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="#" >个人中心</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" >我的考试</a>
      </li>
    </ul>
    <form class="form-inline mt-2 mt-md-0">
      <input class="form-control mr-sm-2" type="text" placeholder="搜索资讯" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
    </form>
  </div>
</nav>

<banner class="banner">
  <div class="banner">
    <div>
      <img src="/pic/${personal.image}" width="150px" height="150px">
    </div>
    <div class="banner2">
      <div class="banner22">
      <h2>${personal.name}</h2>
      </div>
      <div class="banner21">
      <p>关于我的介绍..</p>
      </div>
      <div>
        <span>主页</span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<span>日志</span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<span>留言板</span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
        <span>已做题</span>
      </div>
    </div>
  </div>
</banner>

<main role="main" class="container">
  <div class="row">
    <div class="col-sm-2">
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="http://localhost:8082/jiazhao/PersonalServlet">个人资料</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login2.jsp">好友动态</a>
        </li>
        <li class="nav-item">
          <a class="nav-link">成绩排名</a>
        </li>
        <li class="nav-item">
          <a class="nav-link">题库更新</a>
        </li>
        <li class="nav-item">
          <a class="nav-link">下载管理</a>
        </li>
        <li class="nav-item">
          <a class="nav-link">我的收藏</a>
        </li>
        <li class="nav-item">
          <a class="nav-link">浏览记录</a>
        </li>
        <li class="nav-item">
          <a class="nav-link">我的发表</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login2.jsp">退出登录</a>
        </li>

      </ul>
      <hr class="d-sm-none">
    </div>
    <div class="col-sm-8">
      <div class="mb-3">
        <label for="username">昵称</label>
        <div class="input-group">

          <input type="text" class="form-control" id="username" placeholder="在线无聊jpg" required>
          <div class="invalid-feedback" style="width: 100%;">
            Your username is required.
          </div>
        </div>
      </div>
      <div class="mb-3">
        <label for="username">性别</label>
        <div class="input-group">

          <input type="text" class="form-control" id="sex" placeholder="女" required>
          <div class="invalid-feedback" style="width: 100%;">
            Your username is required.
          </div>
        </div>
      </div>

      <div class="mb-3">
        <label for="username">手机号</label>
        <div class="input-group">

          <input type="text" class="form-control" id="phone" placeholder="666666666" required>
          <div class="invalid-feedback" style="width: 100%;">
            Your username is required.
          </div>
        </div>
      </div>


      <div class="mb-3">
        <label for="email">邮箱</label>
        <input type="email" class="form-control" id="email" placeholder="you@example.com">
        <div class="invalid-feedback">
          Please enter a valid email address for shipping updates.
        </div>
      </div>

      <div class="mb-3">
        <label for="address">地址</label>
        <input type="text" class="form-control" id="address" placeholder="湖北理工学院" required>
        <div class="invalid-feedback">
          Please enter your shipping address.
        </div>
      </div>

      <div class="mb-3">
        <label for="address2">地址2</label>
        <input type="text" class="form-control" id="address2" placeholder="黄石">
      </div>

      <div class="row">
        <div class="col-md-5 mb-3">
          <label for="country">省</label>
          <select class="custom-select d-block w-100" id="country" required>
            <option value="">Choose...</option>
            <option>United States</option>
          </select>
          <div class="invalid-feedback">
            Please select a valid country.
          </div>
        </div>
        <div class="col-md-4 mb-3">
          <label for="state">市</label>
          <select class="custom-select d-block w-100" id="state" required>
            <option value="">Choose...</option>
            <option>California</option>
          </select>
          <div class="invalid-feedback">
            Please provide a valid state.
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <label for="zip">区</label>
          <input type="text" class="form-control" id="zip" placeholder="" required>
          <div class="invalid-feedback">
            Zip code required.
          </div>
        </div>
      </div>
      <hr class="mb-4">
      <div class="custom-control custom-checkbox">
        <input type="checkbox" class="custom-control-input" id="same-address">
        <label class="custom-control-label" for="same-address">保存地址</label>
      </div>

      <hr class="mb-4">

      <h4 class="mb-3">准备科目</h4>

      <div class="d-block my-3">
        <div class="custom-control custom-radio">
          <input id="credit1" name="paymentMethod" type="radio" class="custom-control-input" checked required>
          <label class="custom-control-label" for="credit1">科目一</label>
        </div>
        <div class="custom-control custom-radio">
          <input id="credit2" name="paymentMethod" type="radio" class="custom-control-input" checked required>
          <label class="custom-control-label" for="credit2">科目二</label>
        </div>
        <div class="custom-control custom-radio">
          <input id="credit3" name="paymentMethod" type="radio" class="custom-control-input" checked required>
          <label class="custom-control-label" for="credit3">科目三</label>
        </div>
        <div class="custom-control custom-radio">
          <input id="credit4" name="paymentMethod" type="radio" class="custom-control-input" checked required>
          <label class="custom-control-label" for="credit4">科目四</label>
        </div>
      </div>

      <hr class="mb-4">
      <button class="btn btn-primary btn-lg btn-block" type="submit">保存</button>
      </form>
    </div>
  </div>



    </div>
  </div>
</main>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="../js/common/jquery-2.0.3.min.js"></script>
    <script type="text/javascript" src="../js/common/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/common/index.js"></script>
	<link href="../css/common.css" rel="stylesheet" type="text/css">
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
    <div class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-ex-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><span>Brand</span></a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-ex-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="active">
              <a href="#"><i class="fa fa-home"></i> Home</a>
            </li>
            <li>
              <a href="#"><i class="fa fa-user"></i> MyPage</a>
            </li>
            <li>
              <a href="#"><i class="fa fa-cog"></i> 권한관리</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-lg-2">
          <h3 class="text-primary">
            <i class="fa fa-home"></i>Home</h3>
          <nav class="navbar navbar-default navbar-fixed-side">
            <!-- normal collapsible navbar markup -->
            <ol class="list-unstyled col-md-12 bottom_padding_10 top_padding_10">
              <li>로그인</li>
              <li>회원가입</li>
            </ol>
          </nav>
        </div>
        <div class="col-sm-9 col-lg-10">
          <!-- your page content -->
          <div class="section">
            <div class="container">
              <ul class="breadcrumb">
                <li>
                  <a href="#">Home</a>
                </li>
                <li>로그인</li>
              </ul>
              <h3 class="text-primary">
                <b>로그인</b>
              </h3>
              <div class="row">
                <div class="col-md-12">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label for="inputEmail3" class="control-label">아이디</label>
                      </div>
                      <div class="col-sm-10">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="아이디를 입력해주세요.">
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-2">
                        <label for="inputPassword3" class="control-label">비밀번호</label>
                      </div>
                      <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="비밀번호를 입력해주세요.">
                      </div>
                    </div>
                    <div>
                      <button type="submit" class="btn btn-primary col-sm-12" style="margin-bottom:5px;">로그인</button>
                      <button type="submit" class="btn btn-default col-sm-12" style="margin-bottom:5px;">회원가입</button>
                      <button type="submit" class="btn btn-default col-sm-6">아이디 찾기</button>
                      <button type="submit" class="btn btn-default col-sm-6">비밀번호 찾기</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

</html>
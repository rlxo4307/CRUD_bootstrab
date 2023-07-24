<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html lang="en">

    <head>
        
        <meta charset="utf-8" />
        <title>nhn diquest 지식관리도구</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <link href="../../resources/static/assets/css/layout.css" id="layout-style" rel="stylesheet" type="text/css" />
        <!-- Bootstrap Css -->
        <link href="../../resources/static/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../resources/static/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../resources/static/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    <body >
        <div></div>
        <div class="account-pages my-5 pt-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-4 col-lg-6 col-md-8">
                        <div class="card">
							
                            <div class="card-body p-5">
                                <div class="">
                                    <div class="text-center mb-5">
                                        <a href="index.html" class="">
                                            <img src="../../resources/static/assets/images/logo-light.png" alt="" height="34" class="auth-logo logo-dark mx-auto">
                                            <img src="../../resources/static/assets/images/logo-light.png" alt="" height="34" class="auth-logo logo-light mx-auto">
                                        </a>
                                    </div>
                                    <!-- end row -->
                                    
                                    
                                    <form class="form-horizontal" action="index.html">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="mb-4">
                                                    <label class="form-label WOFF_2" for="Username">아이디</label>
                                                    <input type="text" class="form-control" id="username" placeholder="아이디를 입력해주세요">
                                                </div>
                                                <div class="mb-4">
                                                    <label class="fform-label WOFF_2" for="userpassword">패스워드</label>
                                                    <input type="password" class="form-control" id="userpassword" placeholder="패스워드 입력해주세요">
                                                </div>

                                                <div class="row">
                                                    <div class="col">
                                                        <div class="form-check">
                                                            <input type="checkbox" class="form-check-input" id="customControlInline">
                                                            <label class="form-label WOFF_2" class="form-check-label" for="customControlInline">계정 저장</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-7">
                                                        <div class="text-md-end mt-3 mt-md-0">
                                                           
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="d-grid mt-4">
                                                    <button class="btn btn-primary waves-effect waves-light WOFF_3" type="submit">로그인</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="mt-3 text-center">
                            <p class="text-gray-50">© <script>document.write(new Date().getFullYear())</script> NHN diquest. 
                        </div>
                    </div>
                </div>
                <!-- end row -->
            </div>
        </div>
        <!-- end Account pages -->

        <!-- JAVASCRIPT -->
        <script src="../../resources/static/assets/libs/jquery/jquery.min.js"></script>
        <script src="../../resources/static/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../resources/static/assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="../../resources/static/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="../../resources/static/assets/libs/node-waves/waves.min.js"></script>

        <script src="../../resources/static/assets/js/app.js"></script>

    </body>
</html>

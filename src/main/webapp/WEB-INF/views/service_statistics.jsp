<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

    <head>
        
        <meta charset="utf-8" />
        <title>nhn diquest 지식관리도구</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
		<!-- design Css-->
		 <link href="../../resources/static/assets/css/layout.css" id="layout-style" rel="stylesheet" type="text/css" />
		<link href="../../resources/static/assets/css/modal.css" rel="stylesheet" type="text/css" />
        <!-- Bootstrap Css -->
        <link href="../../resources/static/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="../../resources/static/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="../../resources/static/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    </head>

    <body data-topbar="light" data-layout="horizontal" data-layout-size="boxed">

        <!-- Begin page -->
        <div id="layout-wrapper">

            <header id="page-topbar">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box text-center">
                            <a href="index.html" class="logo logo-dark">
                                <span class="logo-lg">
                                    <img src="../../resources/static/assets/images/logo-light.png" alt="logo-dark" height="34">
                                </span>
                            </a>
                        </div>

                        <button type="button" class="btn btn-sm px-3 font-size-24 d-lg-none header-item" data-bs-toggle="collapse"
                            data-bs-target="#topnav-menu-content">
                            <i class="ri-menu-2-line align-middle"></i>
                        </button>
                    </div>

                    <div class="d-flex font-16">
						
						<button type="button" class="btn header-item waves-effect t_blue" data-target="#set_collection" data-toggle="modal"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         <span class="d-none d-xl-inline-block ms-1 mr-1">전체</span><i class="mdi mdi-cog"></i> 
                         </button>
                        <button type="button" class="btn header-item waves-effect">
                                <span class="d-none d-xl-inline-block ms-1">신은숙님</span>
                        </button>
                        <button type="button" class="btn header-item waves-effect">
                                <span class="d-none d-xl-inline-block ms-1">logout</span>
                                <i class="mdi mdi-arrow-collapse-right"></i> 
                        </button>
                     
                </div>
				</div>
            </header>

            <div class="topnav">
                <div class="container-fluid">
                    <nav class="navbar navbar-light navbar-expand-lg topnav-menu">

                        <div class="collapse navbar-collapse" id="topnav-menu-content">
                            <ul class="navbar-nav">

                                <li class="nav-item">
                                    <a class="nav-link" href="#">
                                        <i class="mdi mdi-chart-box-outline me-2"></i> 통계
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#">
                                        <i class="mdi mdi-notebook-edit-outline me-2"></i>사전관리 
                                    </a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="#">
                                        <i class="ri-apps-2-line me-2"></i>카테고리관리
                                    </a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link" href="#">
                                        <i class="ri-stack-line me-2"></i>도메인관리
                                    </a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link" href="#">
                                        <i class="ri-file-copy-2-line me-2"></i>계정관리 
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
 <!--The Modal:컬렉션 설정-->
<div class="modal" id="set_collection">
        <div class="modal-dialog modal-m">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">컬렉션 설정</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
                    <div class="h-scroll-600 mt-2">
						<div class="tree_wrap radiobox">


													<span class="tree_selectall"><input type="radio" id="tree_selectall" name="tree_selectall" /><label for="tree_selectall" class="f_all">전체</label></span>
													<ul id="tree_list">
														<li><input type="radio" id="tree1" /><label for="tree1">HMALL</label>
														</li>
														<li><input type="radio" id="tree2" /><label for="tree2">SSG</label>
														</li>
														<li><input type="radio" id="tree3" /><label for="tree3">POST</label>
														</li>
														<li><input type="radio" id="tree4" /><label for="tree4">LOTTE</label>
														</li>
													</ul>

											</div>
						
						
					</div>
					
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer">
                    <div class="btn_c">
						<a href="#" type="button" class="btn btn-info btn-sm waves-effect waves-light">선택</a> <a href="#" type="button" class="btn btn-secondary btn-sm waves-effect waves-light">닫기</a> 
					</div>
                </div>
        
            </div>
        </div>
    </div>
<!--end The Modlal:컬렉션 설정--> 
            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12 d-flex">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0">통계</h4><span class="t_line">업데이트 날짜:2023-05-01/12:30:02</span>
                                    
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->



                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div>
                                            <ul class="list-unstyled line">
                                                <li class="py-3">
                                                    <div class="d-flex">
                                                        <div class="left_txt align-self-center me-3">
                                                            사용자 사전
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <div class="progress progress-sm animated-progess">
                                                                <div class="progress-bar bg-info" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
														 <div class="right_txt align-self-center me-3">
                                                           3,200건 / <span>70%</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="py-3">
                                                    <div class="d-flex">
                                                        <div class="left_txt align-self-center me-3">
                                                            복합어사전
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <div class="progress progress-sm animated-progess">
                                                                <div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
														 <div class="right_txt align-self-center me-3">
                                                           340건 / <span>50%</span>
                                                        </div>
                                                    </div>
                                                </li>
												<li class="py-3">
                                                    <div class="d-flex">
                                                        <div class="left_txt align-self-center me-3">
                                                            유의어사전
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <div class="progress progress-sm animated-progess">
                                                                <div class="progress-bar bg-warning" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
														 <div class="right_txt align-self-center me-3">
                                                           100건 / <span>25%</span>
                                                        </div>
                                                    </div>
                                                </li>
												<li class="py-3">
                                                    <div class="d-flex">
                                                        <div class="left_txt align-self-center me-3">
                                                            카테고리사전
                                                        </div>
                                                        <div class="flex-grow-1">
                                                            <div class="progress progress-sm animated-progess">
                                                                <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
														 <div class="right_txt align-self-center me-3">
                                                           100건 / <span>25%</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                
                                            </ul>
                                        </div>
										
										<div class="frl_box mb-2 mt-3">
											<div class="float-left">
												<span class="num_result">총 <strong>30,103</strong>건</span>

											</div>
											<div class="float-right">
												<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="10">10개</option><option value="25">25개</option><option value="50">50개</option><option value="100">100개</option></select>
												
												<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="">전체</option><option value="">신은숙</option><option value="">김혜율</option><option value="">오지현</option></select>
											</div>
											<table class="table table-bordered border-gray table-hover t_select mb-0 align-c">
													 <thead>
													 <tr>
														 <th width="90px;">번호</th>
														 <th>담당자</th>
														 <th>계정</th>
														 <th>사용자사전</th>
														 <th>복합어사전</th>
														 <th>유의어사전</th>
														 <th>카테고리사전</th>
													 </tr>
													</thead>
													 <tbody>
													 
													 <tr>
														 <td class="vMiddle">1</td>
														 <td class="vMiddle"><a href="" class="link_line">신은숙</a></td>
														 <td class="vMiddle">diquest</td>
														 <td class="vMiddle">1,345건</td>
														 <td class="vMiddle">445건</td>
														 <td class="vMiddle">65건</td>
														 <td class="vMiddle">345건</td>
													 </tr>
													  <tr>
														 <td class="vMiddle">2</td>
														 <td class="vMiddle"><a href="" class="link_line">신은숙</a></td>
														 <td class="vMiddle">diquest</td>
														 <td class="vMiddle">1,345건</td>
														 <td class="vMiddle">445건</td>
														 <td class="vMiddle">65건</td>
														 <td class="vMiddle">345건</td>
													 </tr>
													  <tr>
														 <td class="vMiddle">3</td>
														 <td class="vMiddle"><a href="" class="link_line">신은숙</a></td>
														 <td class="vMiddle">diquest</td>
														 <td class="vMiddle">1,345건</td>
														 <td class="vMiddle">445건</td>
														 <td class="vMiddle">65건</td>
														 <td class="vMiddle">345건</td>
													 </tr>
													 <tr>
														 <td class="vMiddle">4</td>
														 <td class="vMiddle"><a href="" class="link_line">신은숙</a></td>
														 <td class="vMiddle">diquest</td>
														 <td class="vMiddle">1,345건</td>
														 <td class="vMiddle">445건</td>
														 <td class="vMiddle">65건</td>
														 <td class="vMiddle">345건</td>
													 </tr>
													 <tr>
														 <td class="vMiddle">5</td>
														 <td class="vMiddle"><a href="" class="link_line">신은숙</a></td>
														 <td class="vMiddle">diquest</td>
														 <td class="vMiddle">1,345건</td>
														 <td class="vMiddle">445건</td>
														 <td class="vMiddle">65건</td>
														 <td class="vMiddle">345건</td>
													 </tr>
													</tbody>
												</table>
											<!--paging-->
											<div class="row mt-3 float-right"><div class="col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate"><ul class="pagination pagination-rounded"><li class="paginate_button page-item first" id="datatable_first"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-left"></i></a></li><li class="paginate_button page-item previous disabled" id="datatable_previous"><a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0" class="page-link"><i class="mdi mdi-chevron-left"></i></a></li><li class="paginate_button page-item active"><a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="datatable_next"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-right"></i></a></li><li class="paginate_button page-item last" id="datatable_last"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-right"></i></a></li></ul></div></div></div>
											<!--//paging-->
										</div>
                                        
                                    </div>
                                    <!-- end card-body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->

                        </div>
                        <!-- end row -->
						
						<div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
											<div class="d-flex mb-3 mt-2">
											<h4 class="title_style1"><span class="t_blue">'신은숙'</span>담당자 별 작업 내역</h4>
										    <div  class="t_line">업데이트날짜: 2023-03-10 12:00:20</div>
											</div>
											

                                        <div class="frl_box">
											<div class="float-left">
												<span class="num_result">총 <strong>30,103</strong>건</span>

											</div>
											<div class="float-right"><select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="전체">전체</option><option value="사용자사전">사용자사전</option><option value="복합어사전">복합어사전</option><option value="유의어사전">유의어사전</option><option value="카테고리사전">카테고리사전</option></select>
											<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="10">10개</option><option value="25">25개</option><option value="50">50개</option><option value="100">100개</option></select>	</div>
											<div class="float-right">
												<div class="row" style="width:400px;">
															<div class="col-md-5">
																<input class="form-control h28px" type="date" value="2023-06-11" id="example-date-input">
															</div>
															<div class="col-md-1 Center" style="line-height:30px;width:30px;">~</div>
															<div class="col-md-5">
																<input class="form-control " type="date" value="2023-06-13" id="example-date-input">
															</div>
														</div>
											</div>
											
											<table class="table table-bordered border-gray table-hover t_select mb-0 align-c">
													 <thead>
													 <tr>
														 <th>작업 사전</th>
														 <th>기간</th>
														 <th>IP</th>
														 <th>키워드</th>
														 <th>작업 내용</th>
													 </tr>
													</thead>
													 <tbody>
													  <tr>
														 <td class="vMiddle" colspan="7">
															 <div class="chart_m Center" style="height:300px;">
												<img src="../../resources/static/assets/images/img_no.png" alt=""><p class="WOFF_3">조회된 데이터가 없습니다.</p> </div>
														 </td>
														 
													 </tr>
													</tbody>
												</table>
											
											<!--paging-->
											<div class="row mt-3 float-right"><div class="col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate"><ul class="pagination pagination-rounded"><li class="paginate_button page-item first" id="datatable_first"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-left"></i></a></li><li class="paginate_button page-item previous disabled" id="datatable_previous"><a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0" class="page-link"><i class="mdi mdi-chevron-left"></i></a></li><li class="paginate_button page-item active"><a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="datatable_next"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-right"></i></a></li><li class="paginate_button page-item last" id="datatable_last"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-right"></i></a></li></ul></div></div></div>
											<!--//paging-->
										</div>
										
                                    </div>
                                    <!-- end card-body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                        </div>

                    </div>
                    
                </div>
                <!-- End Page-content -->
               
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                               2023 © NHN diquest.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div data-simplebar class="h-100">
                <div class="rightbar-title d-flex align-items-center px-3 py-4">
            
                    <h5 class="m-0 me-2">Settings</h5>

                    <a href="javascript:void(0);" class="right-bar-toggle ms-auto">
                        <i class="mdi mdi-close noti-icon"></i>
                    </a>
                </div>

                <!-- Settings -->
                <hr class="mt-0" />
                <h6 class="text-center mb-0">Choose Layouts</h6>

                <div class="p-4">
                    <div class="mb-2">
                        <img src="assets/images/layouts/layout-1.png" class="img-thumbnail" alt="layout-1">
                    </div>

                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input theme-choice" type="checkbox" id="light-mode-switch" checked>
                        <label class="form-check-label" for="light-mode-switch">Light Mode</label>
                    </div>
    
                    <div class="mb-2">
                        <img src="assets/images/layouts/layout-2.png" class="img-thumbnail" alt="layout-2">
                    </div>
                    <div class="form-check form-switch mb-3">
                        <input class="form-check-input theme-choice" type="checkbox" id="dark-mode-switch" data-bsStyle="assets/css/bootstrap-dark.min.css" data-appStyle="assets/css/app-dark.min.css">
                        <label class="form-check-label" for="dark-mode-switch">Dark Mode</label>
                    </div>
    
                    <div class="mb-2">
                        <img src="assets/images/layouts/layout-3.png" class="img-thumbnail" alt="layout-3">
                    </div>
                    <div class="form-check form-switch mb-5">
                        <input class="form-check-input theme-choice" type="checkbox" id="rtl-mode-switch" data-appStyle="assets/css/app-rtl.min.css">
                        <label class="form-check-label" for="rtl-mode-switch">RTL Mode</label>
                    </div>

            
                </div>

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

       
        <!-- JAVASCRIPT -->
	    
        <script src="../../resources/static/assets/libs/jquery/jquery.min.js"></script>
        <script src="../../resources/static/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../../resources/static/assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="../../resources/static/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="../../resources/static/assets/libs/node-waves/waves.min.js"></script>
        <script src="../../resources/static/assets/js/app.js"></script>
        <script src="../../resources/static/assets/js/bootstrap.min.js"></script>
	     <!-- Popper JS -->
       <script src="assets/js/popper.min.js"></script>

    </body>
</html>

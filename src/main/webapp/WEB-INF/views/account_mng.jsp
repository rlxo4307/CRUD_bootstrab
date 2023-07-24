<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
    <head profile="http://www.w3.org/2005/10/profile">

        <meta charset="utf-8" />
        <title>nhn diquest 지식관리도구</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesdesign" name="author" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<!-- design Css-->
		<link href="../../resources/assets/css/layout.css" id="layout-style" type="text/css" />
		<link href="../../resources/assets/css/modal.css" type="text/css" />
        <!-- Bootstrap Css -->
        <link href="../../resources/assets/css/bootstrap.min.css" id="bootstrap-style" type="text/css" />
        <!-- Icons Css -->
        <link href="../../resources/assets/css/icons.min.css" type="text/css" />
        <!-- App Css-->
        <link href="../../resources/assets/css/app.min.css" id="app-style" type="text/css" />

    </head>

    <body data-topbar="light" data-layout="horizontal" data-layout-size="boxed">

        <!-- Begin page -->
        <div id="layout-wrapper">

            <header id="page-topbar">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box text-center">
                            <a href="index.jsp" class="logo logo-dark"> <!-- index.jsp = 임시파일 -->
                                <span class="logo-lg">
                                    <img src="../../resources/assets/images/logo-light.png" alt="logo-dark" height="34">
                                </span>
                            </a>
                        </div>

                        <button type="button" class="btn btn-sm px-3 font-size-24 d-lg-none header-item" data-bs-toggle="collapse"
                            data-bs-target="#topnav-menu-content">
                            <i class="ri-menu-2-line align-middle"></i>
                        </button>
                    </div>

                    <div class="d-flex">
						
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
                                    <h4 class="mb-sm-0">계정관리</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->



                        
                        <!-- end row -->
<div class="row">
	
	<div class="col-lg-12">
		<div class="card">
			<div class="card-body">

				<div class="p-0">
<!--The Modal:계정 등록-->
<div class="modal" id="domain_add">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">계정 등록</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
					<table class="table table-bordered border-gray mb-3">
						<tbody>
							<tr>
								<th scope="row" width="25%">계정</th>
								<td >
<input class="form-control form-control-sm" type="text" value=" " id="largeFileChunkSize1">
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">이름</th>
								<td >
<input class="form-control form-control-sm" type="text" value=" " id="largeFileChunkSize2">
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">비밀번호</th>
								<td >
<input class="form-control form-control-sm" type="password" value=" " id="largeFileChunkSize3">
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">비밀번호 확인</th>
								<td >
<input class="form-control form-control-sm" type="password" value=" " id="largeFileChunkSize4">
								</td>
							</tr>
						</tbody>
					</table>
				
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer">
                    <div class="btn_c">
						<a href="#" type="button" class="btn btn-info btn-sm waves-effect waves-light">등록</a> <a href="#" type="button" class="btn btn-outline-secondary btn-sm waves-effect waves-light">취소</a> 
					</div>
                </div>
        
            </div>
        </div>
    </div>
<!--end The Modlal:계정 등록-->
<!--The Modal:게정 수정-->
<div class="modal" id="domain_modify">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">계정 수정</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
					<table class="table table-bordered border-gray mb-3">
						<tbody>
							<tr>
								<th scope="row" width="25%">계정</th>
								<td>diquest
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">이름</th>
								<td >
<input class="form-control form-control-sm" type="text" value=" " id="largeFileChunkSize6">
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">비밀번호</th>
								<td >
<input class="form-control form-control-sm" type="password" value=" " id="largeFileChunkSize7">
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">비밀번호 확인</th>
								<td >
<input class="form-control form-control-sm" type="password" value=" " id="largeFileChunkSize8">
								</td>
							</tr>
							
							
						</tbody>
					</table>
				
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer">
                    <div class="btn_c">
						<a href="#" type="button" class="btn btn-info btn-sm waves-effect waves-light">저장</a> <a href="#" type="button" class="btn btn-outline-secondary btn-sm waves-effect waves-light">취소</a> 
					</div>
                </div>
        
            </div>
        </div>
    </div>
<!--end The Modlal:계정 수정-->
					<div class="contents">
					  <div class="active mt-2">
						<div class="frl_box mb-2">
							<div class="float-left">
								<span class="t_dot_L">계정 목록</span>
							</div>
						</div>

						 <div class="frl_box mb-1 mt-3">
							<div class="float-left">
								<span class="num_result">총 <strong>30,103</strong>건</span>
								<button type="button" class="btn btn-info btn-sm waves-effect waves-light" data-toggle="modal" data-target="#domain_add" >등록</button>
							</div>
							<div class="float-right">
								<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="10">10개</option><option value="25">25개</option><option value="50">50개</option><option value="100">100개</option></select>	
							</div>
						</div>
						
						<table class="table table-bordered border-gray table-hover t_select mb-0 align-c">
							<colgroup>
								<col>
								<col>
								<col>
								<col>
								<col width="110px">
							 </colgroup><thead>
							 <tr>
								 <th>계정</th>
								 <th>이름</th>
								 <th>수정일</th>
								 <th>등록일</th>
								 <th>설정</th>
							 </tr>
							</thead>
							 <tbody>
							 <tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							<tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							<tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							<tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							<tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							<tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							<tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							<tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							<tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							<tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							<tr>
								 <td>diquest</td>
								 <td>신은숙</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>2021/01/12 12:00:12</td>
								 <td>
									 <a href="" class="d-inline-flex" title="수정" data-toggle="modal" data-target="#domain_modify"><div class="avatar-xs align-self-center me-2"><div class="avatar-title rounded-circle bg-light t_blue3 font-size-15"><i class="fas fa-pen"></i></div></div></a>
									<a href="" class="d-inline-flex" title="삭제"><div class="avatar-xs align-self-center me-2">
										<div class="avatar-title rounded-circle bg-light t_blue3 font-size-15">
											<i class="far fa-trash-alt"></i>
										</div>
										</div></a>
								 </td>
							 </tr>
							</tbody>
						</table>
						
						<!--paging nav-->
						<div class="row mt-3 float-right"><div class="col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate"><ul class="pagination pagination-rounded"><li class="paginate_button page-item first" id="datatable_first"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-left"></i></a></li><li class="paginate_button page-item previous disabled" id="datatable_previous"><a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0" class="page-link"><i class="mdi mdi-chevron-left"></i></a></li><li class="paginate_button page-item active"><a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="datatable_next"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-right"></i></a></li><li class="paginate_button page-item last" id="datatable_last"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-right"></i></a></li></ul></div></div></div>
						<!--end paging nav-->
						<!--end 도메인 목록-->





					  </div> 


					</div>


			</div>


			</div>
		</div>
   </div>


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

       
 <!-- JAVASCRIPT -->
		<script src="../../resources/assets/libs/jquery/jquery.min.js" type="application/json"></script>
		<script src="../../resources/assets/libs/bootstrap/js/bootstrap.bundle.min.js" type="application/json"></script>
		<script src="../../resources/assets/libs/metismenu/metisMenu.min.js" type="application/json"></script>
		<script src="../../resources/assets/libs/simplebar/simplebar.min.js" type="application/json"></script>
		<script src="../../resources/assets/libs/node-waves/waves.min.js" type="application/json"></script>
		<script src="../../resources/assets/js/app.js" type="application/json"></script>
		<script src="../../resources/assets/js/bootstrap.min.js" type="application/json"></script>
		<!-- Popper JS -->
		<script src="../../resources/assets/js/popper.min.js" type="application/json"></script>

    </body>
</html>

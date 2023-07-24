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
                                    <img src="../../resources/static/assets/images/logo-dark.png" alt="logo-dark" height="28">
                                </span>
                            </a>

                            <a href="index.html" class="logo logo-light">
                                <span class="logo-sm">
                                    <img src="assets/images/logo-sm.png" alt="logo-sm-light" height="22">
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
                                    <h4 class="mb-sm-0">사전관리</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->



                        
                        <!-- end row -->
<div class="row">
	<div class="col-lg-6">
		<div class="card">
			<div class="card-body">

				<div class="container p-0">

					<div class="contents">
					  <div id="tab01" class="active mt-2">

						<div class="frl_box mb-2">
							<div class="float-left">
								<span class="t_dot_L">키워드 분석</span>
							</div>
						</div>

						<form class="search_line mt-2">
						<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="전체일치">전체일치</option><option value="부분일치">부분일치</option><option value="전방일치">전방일치</option><option value="후방일치">후방일치</option></select>
						<input class="form-inline-sm w300" type="text" value=" " id="largeFileChunkSize">
						<button type="search" class="btn btn-secondary btn-sm waves-effect waves-light mr-2">검색</button>
						 </form>
						 <!--키워드 분석-->
						<div class="h_500">
						<table class="table  border-gray mb-0 mt-3">
							<colgroup>
								<col width="160px">
								<col>
							 </colgroup>
							 <tbody>
							 <tr>
								 <th>
									형태소 분석결과
								 </th>
								 <td class="h-150s">
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 <p>형태소 분석결과 <span class="t_orange">아이스</span>:명사</p>
									 
									
								 </td>
							 </tr>
							 
							 
							</tbody>
						</table>
						</div>
						<!--end 키워드 분석-->

					  </div> 


					</div>


			</div>


			</div>
		</div>
   </div>
	<div class="col-lg-6">
		<div class="card">
			<div class="card-body">

				<div class="p-0">
<!--The Modal:유의어 추가-->
<div class="modal" id="same_add">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">유의어 추가</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
					<table class="table table-bordered border-gray mb-3">
						<tbody>
							<tr>
								<th scope="row" width="25%">HEAD</th>
								<td>
<input class="form-control form-control-sm" type="text" value=" " id="largeFileChunkSize1">
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">TAIL</th>
								<td>
<textarea required="" class="form-control" rows="6"></textarea>
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">메모</th>
								<td>
<input class="form-control form-control-sm" type="text" value=" " id="largeFileChunkSize2">
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">관계설정</th>
								<td>
<ul class="radiobox group">
	<li style="width:100px;"><input type="radio" name="radio_check_start" id="radio_check_start_01" checked=""><label for="radio_check_start_01">단방향</label></li>
	<li style="width:100px;"><input type="radio" name="radio_check_start" id="radio_check_start_02" ><label for="radio_check_start_02">양방향</label></li>

</ul>
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
<!--end The Modlal:유의어 추가-->
<!--The Modal:유의어 수정-->
<div class="modal" id="same_modify">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">유의어 수정</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
					<table class="table table-bordered border-gray mb-3">
						<tbody>
							<tr>
								<th scope="row" width="25%">HEAD</th>
								<td>키워드111</td>
							</tr>
							<tr>
								<th scope="row" width="25%">TAIL</th>
								<td>
<textarea required="" class="form-control" rows="6"></textarea>
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">메모</th>
								<td>
<input class="form-control form-control-sm" type="text" value=" " id="largeFileChunkSize21">
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">관계설정</th>
								<td>
<ul class="radiobox group">
	<li style="width:100px;"><input type="radio" name="radio_check_start" id="radio_check_start_011" checked=""><label for="radio_check_start_011">단방향</label></li>
	<li style="width:100px;"><input type="radio" name="radio_check_start" id="radio_check_start_021" ><label for="radio_check_start_021">양방향</label></li>

</ul>
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
<!--end The Modlal:유의어 수정-->
<!--The Modal:사전 등록-->
<div class="modal" id="USER-registration" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">사전등록 (사용자 사전)</h4>
                    <button type="button" class="close" data-dismiss="modal">×</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
                    <p class="t_organge">IndexCollection3</p>
					<div class="file_form">
						<input type="file">
						<span class="text">첨부파일을 선택하세요.</span>
					</div>
					<div>* 파일의 Encoding은 확장자명을 따릅니다.</div>
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer">
                    <div class="btn_c">
						<a data-dismiss="modal" data-toggle="modal" href="#USER-registration_1" class="btn btn-secondary btn-sm waves-effect waves-light">다음</a> 
						<button type="button" class="btn btn-outline-secondary btn-sm waves-effect waves-light">취소</button>
					</div>
                </div>
        
            </div>
        </div>
    </div>
<!--end The Modlal:사전 등록-->
<!--사전 등록:파일검증-->
<div class="modal" id="USER-registration_1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">사전등록: 파일 검증</h4>
                    <button type="button" class="close" data-dismiss="modal">×</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
                    <p class="t_dot">동의어 사전 파일 검증 결과</p>
					<div class="list_box_dot">
						<ul>
						 <li><span>파일명:</span>sedofldofdfogogog.UTF-8</li>
						 <li><span>전체:</span>7개</li>
						 <li><span>정상:</span>7개</li>
						 <li><span>실패:</span>0건
							 <p class="s_list">-중복 키워드:0건</p>
							 <p class="s_list">-형식 오류:0건</p>
							 <p class="s_list t_organge">*중복키워드는 먼저 출현한 것이 적용 됩니다.</p>
						</li>
						</ul>
					</div>
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer">
                    <div class="btn_c">
						<button type="button" class="btn btn-secondary btn-sm waves-effect waves-light">다음</button> <button type="button" class="btn btn-outline-secondary btn-sm waves-effect waves-light">취소</button>
					</div>
                </div>
        
            </div>
        </div>
    </div>
<!--end The Modlal:사전 등록: 파일 검증-->
<!--end The Modlal:사전 내려받기-->					
<div class="modal" id="file-download" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">사전 내려받기 (사용자 사전)</h4>
                    <button type="button" class="close" data-dismiss="modal">×</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
					<p class="t_organge">IndexCollection3</p>
					<div class="file_down">
						<span class="t_b">Encoding 방식
						<ul class="radiobox group">
							<li><input type="radio" name="radio_check_type" id="radio_check02_01" checked=""><label for="radio_check02_01">UTF-8</label></li>
							<li><input type="radio" name="radio_check_type" id="radio_check02_02"><label for="radio_check02_02">MS949</label></li>
							<li><input type="radio" name="radio_check_type" id="radio_check02_03"><label for="radio_check02_03">EUC-KR</label></li>
							<li><input type="radio" name="radio_check_type" id="radio_check02_04"><label for="radio_check02_04">KSC5601</label></li>
							<li><input type="radio" name="radio_check_type" id="radio_check02_05"><label for="radio_check02_05">직접입력</label><input class="inline-form-control form-control-sm" type="text" value=" " id="Encoding"></li>
						</ul>
					</span></div>
					<div class="mt-3">* 파일의 확장자는 Encoding명으로 결정됩니다.</div>
                    
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer">
                    <div class="btn_c">
						<a data-dismiss="modal" data-toggle="modal" href="#file-download_1" type="button" class="btn btn-secondary btn-sm waves-effect waves-light">다음</a> <button type="button" class="btn btn-outline-secondary btn-sm waves-effect waves-light">취소</button>
					</div>
                </div>
        
            </div>
        </div>
    </div>
<!--end The Modlal:사전 내려받기-->
<!--The Modlal:파일 내려받기-->
<div class="modal" id="file-download_1">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">사전 내려받기 (사용자 사전)</h4>
                    <button type="button" class="close" data-dismiss="modal">×</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
					<p class="t_b">동의어 사전: <span class="t_organge">NEWS_2105_4 &gt; Default</span> (총7건)</p>
					<div class="list_box_dot">
							<div class="text-center mt-4 mb-4">
                                <button type="button" class="btn btn-primary waves-effect waves-light"><i class="ri-arrow-down-line align-middle mr-2 f-m"></i>equivsynonym.NEWS_2105_4.default.UTF-8  </button>
                            </div>
						    <p class="text-center s_list t_red">저장 완료후 반드시 아래 확인 버튼을 클릭해주십시오.<br>
                    (클릭하지 않을 경우 관리도구에 불필요한 파일이 남을 수 있습니다.)</p>
						
					</div>
					
                    
                </div>
            
                <!-- Modal footer -->
                <div class="modal-footer">
                    <div class="btn_c">
						<button type="button" class="btn btn-secondary btn-sm waves-effect waves-light">저장</button> <button type="button" class="btn btn-outline-secondary btn-sm waves-effect waves-light">취소</button>
					</div>
                </div>
        
            </div>
        </div>
    </div>
<!--end The Modlal:파일 내려받기-->
					<div class="contents">
					  <div class="active mt-2">
						<div class="frl_box mb-2">
							<div class="float-left">
								<span class="t_dot_L">유의어 사전</span>
							</div>
							<div class="float-right">
							<a href="" class="btn_down" title="사전 내려받기" data-toggle="modal" data-target="#file-download"></a><a href="" data-toggle="modal" data-target="#USER-registration" class="btn_up" title="사전 등록"></a>
							</div>
						</div>
						<form class="search_line mt-2">
						<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="전체일치">전체일치</option><option value="부분일치">부분일치</option><option value="전방일치">전방일치</option><option value="후방일치">후방일치</option></select>
						<input class="form-inline-sm w300" type="text" value=" " id="largeFileChunkSize">
						<button type="search" class="btn btn-secondary btn-sm waves-effect waves-light mr-2">검색</button><button type="search" class="btn btn-info btn-sm waves-effect waves-light">직접추가</button>
						 </form>

						 <div class="frl_box mb-1 mt-3">
							<div class="float-left">
								<span class="num_result">총 <strong>30,103</strong>건</span>
								<button type="button" class="btn btn-outline-info btn-sm waves-effect waves-light">삭제</button><button type="button" class="btn btn-info btn-sm waves-effect waves-light" data-toggle="modal" data-target="#same_add" >추가</button>
							</div>
							<div class="float-right">
								<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="10">10개</option><option value="25">25개</option><option value="50">50개</option><option value="100">100개</option></select>	
							</div>
						</div>
						<div class="h_400_s">
						<table class="table table-bordered border-gray table-hover t_select mb-0 align-c">
							<colgroup>
								<col width="24px">
								<col width="130px">
								<col>
								<col>
								<col width="110px">
							 </colgroup><thead>
							 <tr>
								 <th>
									 <div class="checkbox">
									<input type="checkbox" name="region_code" id="region_code1" value="1"><label for="region_code1" class="vTop mt4"></label>
									 </div>
								 </th>
								 <th>HEAD<span class="sorting_set"><a href="#" class="sorting_up" title="정렬"></a><a href="#" class="sorting_down" title="정렬"></a></span></th>
								 <th>TAIL</th>
								 <th>메모</th>
								 <th>기간<span class="sorting_set"><a href="#" class="sorting_up" title="정렬"></a><a href="#" class="sorting_down" title="정렬"></a></span></th>
							 </tr>
							</thead>
							 <tbody>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" checked=""><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword" data-toggle="modal" data-target="#same_modify">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용</td>
								  <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용</td>
								 <td>20210112</td>
							 </tr>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1"><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 </td>
								  <td>키워드 메모 내용 내용 메모내용키워드 </td>
								 <td>20210112</td>
							 </tr>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1"><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 </td>
								  <td>키워드 메모 내용 내용 메모내용키워드 </td>
								 <td>20210112</td>
							 </tr>
							<tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1"><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 </td>
								  <td>키워드 메모 내용 내용 메모내용키워드 </td>
								 <td>20210112</td>
							 </tr>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1"><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 </td>
								  <td>키워드 메모 내용 내용 메모내용키워드 </td>
								 <td>20210112</td>
							 </tr>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1"><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 </td>
								  <td>키워드 메모 내용 내용 메모내용키워드 </td>
								 <td>20210112</td>
							 </tr>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1"><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 </td>
								  <td>키워드 메모 내용 내용 메모내용키워드 </td>
								 <td>20210112</td>
							 </tr>
							<tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1"><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 </td>
								  <td>키워드 메모 내용 내용 메모내용키워드 </td>
								 <td>20210112</td>
							 </tr>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1"><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 </td>
								  <td>키워드 메모 내용 내용 메모내용키워드 </td>
								 <td>20210112</td>
							 </tr>
							<tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1"><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 </td>
								  <td>키워드 메모 내용 내용 메모내용키워드 </td>
								 <td>20210112</td>
							 </tr>
							</tbody>
						</table>
						</div>
						<!--paging nav-->
						<div class="row mt-3 float-right"><div class="col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate"><ul class="pagination pagination-rounded"><li class="paginate_button page-item first" id="datatable_first"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-left"></i></a></li><li class="paginate_button page-item previous disabled" id="datatable_previous"><a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0" class="page-link"><i class="mdi mdi-chevron-left"></i></a></li><li class="paginate_button page-item active"><a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="datatable_next"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-right"></i></a></li><li class="paginate_button page-item last" id="datatable_last"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-right"></i></a></li></ul></div></div></div>
						<!--end paging nav-->
						<!--end 유의어 사전-->





					  </div> 


					</div>


			</div>


			</div>
		</div>
   </div>


</div>						
<div class="row">
	<div class="col-lg-6">
		<div class="card">
			<div class="card-body">

				<div class="container p-0">

					<div class="contents">
					  <div id="tab01" class="active mt-2">

						<div class="frl_box mb-2">
							<div class="float-left">
								<span class="t_dot_L">복합어 사전</span>
							</div>
							<div class="float-right">
							<a href="" class="btn_down" title="사전 내려받기" data-toggle="modal" data-target="#file-download"></a><a href="" data-toggle="modal" data-target="#USER-registration" class="btn_up" title="사전 등록"></a>
							</div>
						</div>

						<form class="search_line mt-2">
						<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="전체일치">전체일치</option><option value="부분일치">부분일치</option><option value="전방일치">전방일치</option><option value="후방일치">후방일치</option></select>
						<input class="form-inline-sm w300" type="text" value=" " id="largeFileChunkSize">
						<button type="search" class="btn btn-secondary btn-sm waves-effect waves-light mr-2">검색</button><button type="search" class="btn btn-info btn-sm waves-effect waves-light">직접추가</button>
						 </form>
						 <!--복합어 사전-->
<!--The Modal:복합어사전 수정-->
<div class="modal" id="cn_modify">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">복합어사전 수정</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
					<table class="table table-bordered border-gray mb-3">
						<tbody>
							<tr>
								<th scope="row" width="25%">키워드</th>
								<td>키워드
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">메모</th>
								<td>
<input class="form-control form-control-sm" type="text" value=" " id="largeFileChunkSize2">
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
<!--end The Modlal:복합어사전 수정-->
						 <div class="frl_box mb-1 mt-3">
							<div class="float-left">
								<span class="num_result">총 <strong>30,103</strong>건</span>
								<button type="button" class="btn btn-outline-info btn-sm waves-effect waves-light">삭제</button>
							</div>
							<div class="float-right">
								<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="10">10개</option><option value="25">25개</option><option value="50">50개</option><option value="100">100개</option></select>	
							</div>
						</div>
						<table class="table table-bordered border-gray table-hover t_select mb-0 align-c">
							<colgroup>
								<col width="24px">
								<col width="160px">
								<col>
								<col width="120px">
							 </colgroup><thead>
							 <tr>
								 <th>
									 <div class="checkbox">
									<input type="checkbox" name="region_code" id="region_code1" value="1"><label for="region_code1" class="vTop mt4"></label>
									 </div>
								 </th>
								 <th>키워드<span class="sorting_set"><a href="#" class="sorting_up" title="정렬"></a><a href="#" class="sorting_down" title="정렬"></a></span></th>
								 <th>메모</th>
								 <th>기간<span class="sorting_set"><a href="#" class="sorting_up" title="정렬"></a><a href="#" class="sorting_down" title="정렬"></a></span></th>
							 </tr>
							</thead>
							 <tbody>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" checked=""><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword" data-toggle="modal" data-target="#cn_modify">키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용 메모내용</td>
								 <td>2021/01/12</td>
							 </tr>
							  <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" ><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용 메모내용</td>
								 <td>2021/01/12</td>
							 </tr>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" ><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용 메모내용</td>
								 <td>2021/01/12</td>
							 </tr>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" ><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용 메모내용</td>
								 <td>2021/01/12</td>
							 </tr>
							  <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" ><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용 메모내용</td>
								 <td>2021/01/12</td>
							 </tr>
							</tbody>
						</table>
						<!--paging nav-->
						<div class="row mt-3 float-right"><div class="col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate"><ul class="pagination pagination-rounded"><li class="paginate_button page-item first" id="datatable_first"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-left"></i></a></li><li class="paginate_button page-item previous disabled" id="datatable_previous"><a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0" class="page-link"><i class="mdi mdi-chevron-left"></i></a></li><li class="paginate_button page-item active"><a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="datatable_next"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-right"></i></a></li><li class="paginate_button page-item last" id="datatable_last"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-right"></i></a></li></ul></div></div></div>
						<!--end paging nav-->
						<!--end 복합어 사전-->





					  </div> 


					</div>


			</div>


			</div>
		</div>
   </div>

	<div class="col-lg-6">
		<div class="card">
			<div class="card-body">

				<div class="p-0">

					<div class="contents">
					  <div class="active mt-2">

						<div class="frl_box mb-2">
							<div class="float-left">
								<span class="t_dot_L">사용자 사전</span>
							</div>
							<div class="float-right">
							<a href="" class="btn_down" title="사전 내려받기" data-toggle="modal" data-target="#file-download"></a><a href="" data-toggle="modal" data-target="#USER-registration" class="btn_up" title="사전 등록"></a>
							</div>
						</div>

						<form class="search_line mt-2">
						<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="전체일치">전체일치</option><option value="부분일치">부분일치</option><option value="전방일치">전방일치</option><option value="후방일치">후방일치</option></select>
						<input class="form-inline-sm w300" type="text" value=" " id="largeFileChunkSize">
						<button type="search" class="btn btn-secondary btn-sm waves-effect waves-light mr-2">검색</button><button type="search" class="btn btn-info btn-sm waves-effect waves-light">직접추가</button>
						 </form>
						 <!--사용자 사전-->
						 <div class="frl_box mb-1 mt-3">
							<div class="float-left">
								<span class="num_result">총 <strong>30,103</strong>건</span>
								<button type="button" class="btn btn-outline-info btn-sm waves-effect waves-light">삭제</button>
							</div>
							<div class="float-right">
								<select name="" class="custom-select-sm form-inline-sm form-control-sm form-select-sm"><option value="10">10개</option><option value="25">25개</option><option value="50">50개</option><option value="100">100개</option></select>	
							</div>
						</div>
<!--The Modal:사용자사전 수정-->
<div class="modal" id="user_modify">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">사용자사전 수정</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
            
                <!-- Modal body -->
                <div class="modal-body">
					<table class="table table-bordered border-gray mb-3">
						<tbody>
							<tr>
								<th scope="row" width="25%">키워드</th>
								<td>키워드
								</td>
							</tr>
							<tr>
								<th scope="row" width="25%">메모</th>
								<td>
<input class="form-control form-control-sm" type="text" value=" " id="largeFileChunkSize2">
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
<!--end The Modlal:사용자사전 수정-->							  
						<table class="table table-bordered border-gray table-hover t_select mb-0 align-c">
							<colgroup>
								<col width="24px">
								<col width="150px">
								<col>
								<col width="120px">
							 </colgroup><thead>
							 <tr>
								 <th>
									 <div class="checkbox">
									<input type="checkbox" name="region_code" id="region_code1" value="1"><label for="region_code1" class="vTop mt4"></label>
									 </div>
								 </th>
								 <th>키워드<span class="sorting_set"><a href="#" class="sorting_up" title="정렬"></a><a href="#" class="sorting_down" title="정렬"></a></span></th>
								 <th>메모</th>
								 <th>기간<span class="sorting_set"><a href="#" class="sorting_up" title="정렬"></a><a href="#" class="sorting_down" title="정렬"></a></span></th>
							 </tr>
							</thead>
							 <tbody>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" checked=""><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword" data-toggle="modal" data-target="#user_modify">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용 메모내용</td>
								 <td>20210112</td>
							 </tr>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" checked=""><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용 메모내용</td>
								 <td>20210112</td>
							 </tr>
							 <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" checked=""><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용 메모내용</td>
								 <td>20210112</td>
							 </tr>
							  <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" checked=""><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용 메모내용</td>
								 <td>20210112</td>
							 </tr>
							  <tr>
								 <td> 
									 <div class="checkbox">
									<input type="checkbox" name="field_check1" id="field_check1" value="1" checked=""><label for="field_check1" class="vTop mt4"></label>
									 </div>
								 </td>
								 <td><a href="#" class="link_line btn_keyword">00키워드1</a></td>
								 <td>키워드 메모 내용 내용 메모내용키워드 메모 내용 내용 메모내용</td>
								 <td>20210112</td>
							 </tr>
							</tbody>
						</table>
						<!--paging nav-->
						<div class="row mt-3 float-right"><div class="col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate"><ul class="pagination pagination-rounded"><li class="paginate_button page-item first" id="datatable_first"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-left"></i></a></li><li class="paginate_button page-item previous disabled" id="datatable_previous"><a href="#" aria-controls="datatable" data-dt-idx="0" tabindex="0" class="page-link"><i class="mdi mdi-chevron-left"></i></a></li><li class="paginate_button page-item active"><a href="#" aria-controls="datatable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li><li class="paginate_button page-item next" id="datatable_next"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-right"></i></a></li><li class="paginate_button page-item last" id="datatable_last"><a href="#" aria-controls="datatable" data-dt-idx="7" tabindex="0" class="page-link"><i class="mdi mdi-chevron-double-right"></i></a></li></ul></div></div></div>
						<!--end paging nav-->
						<!--end 사용자 사전-->





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

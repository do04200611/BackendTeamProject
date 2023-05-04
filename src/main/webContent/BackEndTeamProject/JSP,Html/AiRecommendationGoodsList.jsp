<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../CSS/AiRecommendationGoodsList.css"> <!--AiRecommendationGoodsList.css 파일과 현재 JSP파일과 연결시키는 코드 -->
<link rel="stylesheet" href="../CSS/Menubar.css"><!--Menubar.css 파일과 현재 JSP파일과 연결시키는 코드 -->
<link rel="stylesheet" href="../CSS/BrandMark.css"><!-- BrandMark.css파일과 현재 JSP파일과 연결시키는 코드 -->
<link rel="shortcut icon" type="image/x-icon" href="../../images/forest-brand-mark.png">
<title>Forest</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">		
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="HomePage.jsp">
			<img id="menubar-forestbrand-mark" src="../../images/forest-brand-mark.png" ></a>
		</div>
		<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav ">
				<li><a href="MemberShipRegistration.jsp">회원가입</a></li>
				<li><a href="MemberManagementBulletinBoard.jsp">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			<li class="dropdown">
				<a href="Request/RequestList.jsp" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">게시판<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="productreview/AlbumBulletinBoardList.jsp">상품 후기</a></li>
					<li><a href="QuestionAndList.jsp">자주묻는 질문</a></li>
					<li><a href="Request/RequestList.jsp">답변 게시판</a></li>
					<li><a href="notice/NoticeList.jsp">공지 사항</a></li>
				</ul>
			</li>
		</ul>		
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="HomePage.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">홈페이지<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="과제2.jsp">로그인</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="pagetitle">
		<span><strong>AI 추천 상품목록</strong></span>
		<span>오늘의 AI가 엄선한 가장 Hot한 상품 trend에 맞는 추천 광고상품</span>
	</div>
		 

</body>
</html>
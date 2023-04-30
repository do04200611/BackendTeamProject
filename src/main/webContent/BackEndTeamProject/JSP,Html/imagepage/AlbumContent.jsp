<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Forest</title>
	<link rel="shortcut icon" type="image/x-icon" href="../../../images/forest-brand-mark.png">
	<link rel="stylesheet" href="../../CSS/Menubar.css">
	<link rel="stylesheet" href="../../CSS/BrandMark.css">
	<link rel="stylesheet" href="../../CSS/BulletinBoard/BulletinBoardContent.css">
	<link rel="stylesheet" href="../../CSS/VerticalMenubar.css">
	<style type="text/css">
	#customerrequire{
		position: absolute;
		bottom: 500px;
		left: 500px;
	}
	#wrap{
		width: 800px;
        margin: 0 auto 0 auto;
        position: relative;
		bottom: 50px;
		left: 50px;
	
		
	}
	.table {
		border-left: none;
		margin: 0 auto 0 auto;
		border-right: none;
	}
	input{
		width: 100px;
		height: 30px;
		background-color: blue;
		color: white;
	}
	.addbutton{
		position: relative;
		left: 1290px;
		border-radius: 10px;
	}
	.comment{
		position: relative;
		left: 100px;
		border-radius: 10px;
	}
	.content{
		text-align: center;
		position: relative;
	}
	#request{
		position: relative;
		top: 10px;
		right: 5px;
	}
	.goodsimage{
	   display: block;
       margin: auto;
       width: 300px;
       height: 100px;
	}
	</style>
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
					<a class="navbar-brand" href="../HomePage.jsp"><img id="menubar-forestbrand-mark" src="../../../images/forest-brand-mark.png" ></a>
			</div>
			<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav ">
					<li><a href="MemberShipRegistration.jsp">회원가입</a></li>
					<li><a href="BulletinBoardList.jsp">게시판</a></li>
				</ul>		
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="../HomePage.jsp" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">홈페이지<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="과제2.jsp">로그인</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		<ul>
		  <li><a class="vertical" href="#">메뉴 1</a></li>
		  <li><a class="vertical" href="#">메뉴 2</a></li>
		  <li><a class="vertical" href="#">메뉴 3</a></li>
		  <li><a class="vertical" href="#">메뉴 4</a></li>
		  <li><a class="vertical" href="#">메뉴 5</a></li>
		</ul>
			<h1 id="customerrequire">상품 게시판</h1>
		<div id="wrap">
		<table class="table" width="800" border="3">
			<thead>
			  <tr height="30">
			   <th class="commonbasicinformation">제목 </th>
			    <th class="commonbasicinformation">산양 우유 단백질 상품 후기</th>
			  </tr>
			</thead>
			<tbody>
				<tr>
					<td>작성자</td>
					<td>11nae***</td>
				</tr>
				<tr>
					<td>작성일</td>
					<td>2023.03.03</td>
				</tr>
				<tr>
					<td>조회 수</td>
					<td>104</td>
				</tr>
			</tbody>
		</table>
	</div>
				<hr>
					<img src="../../../images/hompageimage/jwgoods.jpg"  id="daeseonglifesciencegoods" class="goodsimage">
					<p class="content">
					우유가 맛있습니다. 고급 브랜드라서 그런지 더 사고 싶습니다. 저는 개인적으로 이 제품 강추합니다.</p>
				<hr>
				
		            <input type="button" value="댓글" class="comment"/>
		            <a href="AlbumBulletinBoardList.jsp"><input class="addbutton" type="button" value="목록"></a>		
				
	</body>
</html>
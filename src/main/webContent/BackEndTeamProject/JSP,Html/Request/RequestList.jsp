<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.swing.text.html.CSS.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<html>
<head>
	<link rel="stylesheet" href="../../CSS/Request/RequestList.css">
	<link rel="stylesheet" href="../../CSS/Menubar.css">
	<link rel="stylesheet" href="../../CSS/UpponMenubar.css">
	<link rel="stylesheet" href="../../CSS/VerticalMenubar.css">
	<link rel="stylesheet" href="../../CSS/BrandMark.css">
	<link rel="shortcut icon" type="image/x-icon" href="../../../images/forest-brand-mark.png">
    <title>Forest</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript">
     function writeForm(){
         location.href="BoardWriteForm.bo";
     }
	</script>
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
					<a class="navbar-brand" href="../HomePage.jsp">
					<img id="menubar-forestbrand-mark" src="../../../images/forest-brand-mark.png" ></a>
			</div>
			<div class="coollapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav ">
					<li><a href="MemberShipRegistration.jsp">회원가입</a></li>
					<li><a href="BulletinBoardList.jsp">게시판</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="../Request/RequestList.jsp" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">게시판<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../productreview/AlbumBulletinBoardList.jsp">상품 후기</a></li>
						<li><a href="../QuestionAndAnswer.jsp">자주묻는 질문</a></li>
						<li><a href="../Request/RequestList.jsp">답변 게시판</a></li>
						<li><a href="../notice/NoticeList.jsp">공지 사항</a></li>
					</ul>
				</li>
			</ul>			
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="../HomePage.jsp" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">홈페이지<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="active"><a href="../Login.jsp">로그인</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
 		
		<div id="bulletinboarform">
		 
		   <!-- 글목록 위 부분-->
		    <br>
		    <div id="topForm">
		        <c:if test="${sessionScope.sessionID!=null}">
		            <input type="button" value="글쓰기" onclick="writeForm()">
		        </c:if>    
		    </div>
    	<ul class="verticalmenuul">
		  <li><a class="vertical" href="../notice/NoticeList.jsp">공지사항</a></li>
		  <li><a class="vertical" href="../Request/RequestList.jsp">답변 게시판</a></li>
		  <li><a class="vertical" href="../QuestionAndAnswer.jsp">자주 묻는 질문</a></li>
		  <li><a class="vertical" href="../imagepage/AlbumBulletinBoardList.jsp">상품 후기</a></li>
		  <li><a class="vertical" href="../PurchasePage.jsp">구매 페이지</a></li>
		</ul>
	<nav class="upponmenubarnav">
	  <ul class="upponmenubarul">
	    <li class="upponmenubardetail" ><a href="RequestList.jsp">답변 게시판</a></li>
	    <li class="upponmenubardetail"><a href="../QuestionAndAnswer.jsp">자주 묻는 질문</a></li>
	    <li class="upponmenubardetail"><a href="../imagepage/AlbumBulletinBoardList.jsp">상품 후기</a></li>
	    <li class="upponmenubardetail" ><a href="../notice/NoticeList.jsp">공지사항</a></li>
	  </ul>
	</nav>
		    
		   <!-- 게시글 목록 부분 -->
		    <br>
		    <div id="bulletintableform">
		        <table id="requesttable" width="800" border="3" border-color="lightgray" text-align="center";>
		            <tr height="30">
		                <td>글번호</td>
		                <td>제목</td>
		                <td>작성자</td>
		                <td>작성일</td>
		                <td>조회수</td>
		            </tr>
		            <tr>
		            <td>1</td>
		            <td><a href="RequestContent.jsp">배송이 너무 늦어요</a></td><td>11nae**</td><td>2023.03.01</td><td>101</td>
		            </tr>
		           
		            	
		        <c:forEach var="board" items="${requestScope.list}">
		            <tr>
		                <td>${board.board_num}</td>
		                <td align="left">
		                    <c:if test="${board.board_re_lev > 0}">
		                        <c:forEach begin="1" end="${board.board_re_lev}">
		                            &nbsp;&nbsp; <!-- 답변글일경우 글 제목 앞에 공백을 준다. -->
		                        </c:forEach>
		                        RE : 
		                    </c:if>
		                    <a href="BoardDetailAction.bo?num=${board.board_num}&pageNum=${spage}">
		                    ${board.board_subject}
		                    </a>
		                </td>
		                <td>
		                    <a href="#">
		                    ${board.board_id}
		                    </a>
		                </td>
		                <td>${board.board_date}</td>
		                <td>${board.board_count}</td>
		            </tr>
		        </c:forEach>
		        </table>
		    </div>
		    
		    <!-- 게시글 목록 부분 -->
		    <br>
		    <div id="pageForm">
		        <c:if test="${startPage != 1}">
		            <a href='BoardListAction.bo?page=${startPage-1}'>[이전]</a>
		        </c:if>
		        
		        <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
		            <c:if test="${pageNum == spage}">
		                ${pageNum}&nbsp;
		            </c:if>
		            <c:if test="${pageNum != spage}">
		                <a href='BoardListAction.bo?page=${pageNum}'>${pageNum}&nbsp;</a>
		            </c:if>
		        </c:forEach>
		        
		        <c:if test="${endPage != maxPage }">
		            <a href='BoardListAction.bo?page=${endPage+1 }'>[다음]</a>
		        </c:if>
		    </div>
		    
		    <!--  검색 부분 -->
		    <br>
		    <div id="searchForm">
		        <div>
		            <select>
		                <option value="0">제목</option>
		                <option value="1">내용</option>
		                <option value="2">제목+내용</option>
		                <option value="3">글쓴이</option>
		            </select>

		            
		            <input type="text" size="20" name="condition"/>
		            <input type="submit" value="검색" class="searchbutton"/>
   		            <a href="RequestWrite.jsp"><input class="addbutton" type="submit" value="등록"></a>
		            
	            </div>
		           
		            
		            </div>
		             
		    
		      
		       </div>
		    
		<div>
		
		
		</div>
	</body>
</html>
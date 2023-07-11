<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.member.model.vo.Member"%>
<%
	String contextPath = request.getContextPath();

	Member loginUser = (Member) session.getAttribute("loginUser");
	// 로그인전이라면 loginUser에는 null값이 담겨있을 것이고
	// 로그인성공 후라면, loginUser에는 로그인한 회원의 정보가 담긴 Member객체가 들어가 있을것.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>

	.outer{
		background:black;
		color :white;
		width:1000px;
		margin : auto;
		margin-top: 50px;
	}
	
	#login-form, #user-info {float:right}
	#user-info a{
		text-decoration : none;
		color : black;
		font-size:12px;
	}
	.nav-area {background:black;}
	.menu{
		display:table-cell;
		height:50px;
		width:150px;
	}
	.menu a{
		text-decoration:none;
		color:white;
		font-size:20px;
		font-weight:bold;
		display:block;
		width:100%;
		height:100%;
		line-height:50px;
	}
	.menu a:hover{
		background:darkgray;
	}
</style>
</head>
<body>

	<script>
		
		const msg = "<%= (String)session.getAttribute("alertMsg") %>";
		
		if(msg != "null"){
			alert(msg);
			// 알림창을 띄워준 후 session에 담긴 해당 메세지는 지워줘야한다.
			// 안그럼, menubar.jsp가 로딩될때마다 항상 메세지가 뜰것..
			<% session.removeAttribute("alertMsg"); %>
		}
	</script>

	<h1 align="center">Welcome C Class</h1>
	
	<div class="login-area">
	
		<% if(loginUser == null) { %>
	
		<form id="login-form" action="<%= request.getContextPath()%>/login.me" method="POST">
			<table>
				<tr>
					<th>아이디 : </th>
					<td><input type="text" name="userId" required></td>
				</tr>
				<tr>
					<th>비밀번호 : </th>
					<td><input type="password" name="userPwd" required></td>
				</tr>
				<tr>
					<th colspan="2">
						<button type="submit">로그인</button>
						<button type="button" onclick="enrollPage();">회원가입</button>
					</th>
				</tr>
			</table>			
		</form>	
		
		<script>
			function enrollPage(){
				
				<%-- location.href = "<%= contextPath %>/views/member/memberEnrollForm.jsp"; --%>
				// 웹 애플리케이션의 디렉토리 구조가 url에 노출되면 보안에 취약하다.
				
				// 단순한 정적인 페이지 요청일지라도 반드시 servlet을 거쳐가도록 작성할것.
				// 즉, url에 서블릿 매핑값만 노출되도록 하기.
				location.href = "<%=contextPath%>/enrollForm.me";
			}
		</script>
		
		<% } else { %>
			<!-- 로그인 성공 후 -->
			<div id="user-info">
				<b><%= loginUser.getUserName() %>님</b> 환영합니다.<br><br>
				<div align="center">
					<a href="<%=contextPath %>/update.me">마이페이지</a>
					<a href="<%=contextPath %>/logout.me">로그아웃</a>
				</div>
			</div>			
		<% } %>
	</div>
	
	<br clear="both"><!--  float 속성해제 -->
	<br>
	
	<div class="nav-area" align="center">
		<div class="menu"><a href="<%=contextPath %>">HOME</a></div>
		<div class="menu"><a href="<%=contextPath %>/list.no">공지사항</a></div>
		<div class="menu"><a href="<%=contextPath %>/list.bo">일반게시판</a></div>
		<div class="menu"><a href="<%=contextPath %>/list.th">사진게시판</a></div>
	</div>
	
	
	
	
	
	
	
	
	
	


</body>
</html>
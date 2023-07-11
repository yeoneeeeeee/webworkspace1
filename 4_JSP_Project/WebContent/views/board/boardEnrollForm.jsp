<%@ page import="java.util.ArrayList, com.kh.board.model.vo.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Category> list = (ArrayList<Category>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer{
		height:550px;
	}
	
	#enroll-form>table{border:1px solid white;}
	#enroll-form input, #enroll-form textarea{
		width:100%;
		box-sizing:border-box;
	}
</style>
</head>
<body>

	<%@ include file="/views/common/menubar.jsp" %>
	
	<div class="outer">
		<br>
		<h2 align="center">일반게시판 작성하기</h2>
		<br>
																				<!-- ☆file형식일때 'entype'사용 / 안쓰면 기본 url 타입 -->
		<form action="<%= contextPath %>/insert.bo" id="enroll-form" method="post" enctype="multipart/form-data">
		
		<!-- 작성자 회원번호 -->
		<input type="hidden" name="userNo" value="<%= loginUser.getUserNo() %>">
		<table align="center">
			<tr>
				<th width="100">카테고리</th>
				<td width="500">
					<select name="category">
						<!-- <option value="10">공통</option>
						<option value="20">운동</option>
						<option value="30">등산</option>
						<option value="40">게임</option>
						<option value="50">낚시</option>
						<option value="60">요리</option>
						<option value="70">기타</option> -->
						<% for(Category c : list) { %>
							<option value="<%= c.getCategoryNo() %>"><%= c.getCategoryName() %></option>
						<% } %>
					</select>
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" required></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" rows="10" required></textarea></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><input type="file" name="upfile"></td>
			</tr>
		</table>
		
		<br>
		
		<div align="center">
			<button type="submit">작성하기</button>
		</div>
		
		
	</form>

	</div>

</body>
</html>
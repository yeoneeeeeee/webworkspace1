<%@ page import="java.util.ArrayList, com.kh.board.model.vo.*" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 게시판(Board)정보 필요, 첨부파일(Attachment), 카테고리 목록정보 필요
	Board b = (Board) request.getAttribute("b");
	Attachment at = (Attachment) request.getAttribute("at");
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

	#update-form>table{border:1px solid white;}
	#update-form input, #update-form textarea{
		width:100%;
		box-sizing:border-box;
	}
</style>
</head>
<body>

	<%@ include file = "/views/common/menubar.jsp" %>

<div class="outer">
		<br>
		<h2 align="center">일반게시판 수정하기</h2>
		<br>
																				<!-- ☆file형식일때 'entype'사용 / 안쓰면 기본 url 타입 -->
		<form action="<%= contextPath %>/update.bo" id="update-form" method="post" enctype="multipart/form-data">
		<!-- 게시글 번호 넘겨주기 -->
		<input type="hidden" name="bno" value="<%= b.getBoardNo() %>">
		
		<table align="center">
			<tr>
				<th width="100">카테고리</th>
				<td width="500">
					<select name="category">
						<% for(Category c : list) { %>
							<option value="<%= c.getCategoryNo() %>"><%= c.getCategoryName() %></option>
						<% } %>
					</select>
					
					<script>
					    $(function(){
							$("#update-form option").each( function(){ //;option태그를 가져와서 each반복을 돌려서 일치하는 것을 선택되게끔 만듦
								if($(this).text() == "<%= b.getCategory() %>"){
									$(this).attr("selected",true);
							}
							});
						})
					</script>
					
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="<%= b.getBoardTitle() %>" required></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" rows="10" required><%=b.getBoardContent() %></textarea></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td>
					<% if(at != null) { %> <!-- 사용자가 attachment첨부파일을 추가한지 여부 파악 -->
						<%= at.getOriginName() %>
						<!-- 원본파일의 파일번호(DB수정용), 수정된 이름(웹서버 파일 삭제용) hidden으로 넘길 예정 		;이 내용을 넘기는 이유? DB에서도 파일을 수정 or 삭제해야하기 때문에 -->
						<input type="hidden" name="originFileNo" value="<%=at.getFileNo() %>">
						<input type="hidden" name="origintFileName" vlaue="<%=at.getChangeName() %>">
					<% } %>
					<input type="file" name="reUpfile">
				</td>
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
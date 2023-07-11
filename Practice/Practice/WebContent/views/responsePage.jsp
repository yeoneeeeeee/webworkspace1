<%@ page import = "java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pizza = (String) request.getAttribute("pizza");
	String[] toping = (String[]) request.getAttribute("toping");
	String[] side = (String[]) request.getAttribute("side");
	
	int sum = 0;
	
	HashMap<String, String> map= new HashMap<>(); 
	map.put("치즈피자", "5000");
	map.put("콤비네이션피자", "6000");
	map.put("포테이토피자", "7000");
	map.put("고구마피자", "7000");
	map.put("불고기피자", "8000");
	map.put("고구마무스", "1000");
	map.put("콘크림무스", "1500");
	map.put("파인애플토핑", "2000");
	map.put("치즈토핑", "2000");
	map.put("치즈크러스트", "2000");
	map.put("치즈바이트", "3000");
	map.put("오븐구이통닭", "9000");
	map.put("치킨스틱&윙", "4900");
	map.put("치즈오븐스파게티", "4000");
	map.put("새우링&웨지감자", "3500");
	map.put("갈릭포테이토", "3000");
	map.put("콜라", "1500");
	map.put("사이다", "1500");
	map.put("갈릭소스", "500");
	map.put("피클", "300");
	map.put("핫소스", "100");
	map.put("파마산 치즈가루", "100");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.big{
		font-size:30px;
	}
	.red{
		color:red;
	}
	.green{
		color:green;
	}
	.blue{
		color:blue;
	}
	.pink{
		color:pink;
	}
</style>
</head>
<body>

	<h2>주문내역</h2>
	
	피자는
	<span class = 'red'> <%= pizza %> </span>
	, 
	
	토핑은
	<% if(toping == null){ %>
		없습니다.
	<% } else { %>
			<% for(String t : toping) { %>
			<span class="green"><%= t %></span>
			<% } %>
	<% } %>
	,
	사이드는
	<% if(side == null){ %>
		없습니다.
	<% } else { %>
		
			<% for(String s : side) { %>
			<span class="blue"><%= s %></span>
			<% } %>
		
	<% } %>
	
	주문하셨습니다.
	
	<br><br>
	
	
	<%
		sum += Integer.parseInt(map.get(pizza));
	
		for(int i = 0; i < toping.length; i++){
			sum += Integer.parseInt(map.get(toping[i]));
		}
		for(int i = 0; i < side.length; i++){
			sum += Integer.parseInt(map.get(side[i]));
		}
	%>
	
	총합 : <%= sum %> 원
	
	<br><br>
	
	<span class="pink big">즐거운 식사시간 되세요~</span>
</body>
</html>
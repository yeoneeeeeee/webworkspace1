<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<input type="text" id="sender" size="10" placeholder="보내는사람이름">
<input type="text" id="receiver" size="10" placeholder="받는사람이름"> 
<input type="text" id="msg" placeholder="전송할 메세지">
<button onclick="sendMsg();">전송</button>

<div id="msgContainer">

</div>

<script>
	// 웹소켓 서버에 연결
	// WebSocket객체 생성 ==> 연결요청보냄	 //;객체 생성하면 곧 연결요청을 보내는 것임
	// 192.168.30.177
	const socket = new WebSocket("ws://192.168.30.177:8081/<%= request.getContextPath() %>/chatting.do"); //;192.168.30.177==localgost
	
	// socket 설정하기 
	// 1. 소켓에 접속후 실행되는 이벤트 핸들러 등록.
	socket.onopen = function(e){
		console.log("웹소켓 접속 성공");
		console.log(e);
	}
	
	// 2. 웹소켓 서버로 메세지를 전송하는 함수
	const sendMsg = () => {
		// 발송자, 수신사, 메세지내용 -> 무조건 문자열만 보낼수 있어서 javascript를 형변환 시켜서 json으로 보내야함. json자체가 문자열로 이루어진 것.
		// 메세지 객체를 만든 후, JSON.stringify() 함수를 이용하여 JSON오브젝트로 만들어준후
		// 전송할것.
		
		let msg = {
				sender : $("#sender").val(),
				receiver : $("#receiver").val(),
				msg : $("#msg").val()
		}
		socket.send(JSON.stringify(msg)); //;javascript를 형변환 시켜서 json으로 보내는 형식임
	}
	
	// 3. 웹소켓 서버에서 sendXXX메소드를 실행하면 실행되는 함수
	socket.onmessage = function(e){
		console.log("메세지 수신됨.");
		
		console.log(e.data); // e.data속성 안에 서버가 전달한 데이터가 담겨있음. //;전달한 데이터는 문자열 형태인 json오브젝트임.
		console.log(JSON.parse(e.data) ); //;json문자열 데이터가 java 객체가 되도록 형변환식
		
		let msg = JSON.parse(e.data);
		
		if(msg["sender"] == $("sender").val()){
			$("#msgContainer").append($("<p>").text("<"+msg["sender"]+"> "+msg["msg"]).css("text-align","left"));
		}else{
			$("#msgContainer").append($("<p>").text("<"+msg["sender"]+"> "+msg["msg"]).css("text-align","right"));
		}
	}
	
	
	
	
</script>



</body>
</html>
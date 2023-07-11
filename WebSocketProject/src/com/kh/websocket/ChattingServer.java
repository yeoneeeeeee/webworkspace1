package com.kh.websocket;

import java.io.IOException;
import java.util.Set;

import javax.websocket.EncodeException;
import javax.websocket.EndpointConfig;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.google.gson.Gson;

// 일반클래스를 웹소켓 서버로 등록하기 위한 방법.


@ServerEndpoint(value="/chatting.do",
				decoders= {JsonDecoder.class},
				encoders= {JsonEncoder.class})
public class ChattingServer {

	@OnOpen
	public void open(Session session, EndpointConfig config) {
		// 접속요청한 클라이언트와 연결되면 실행되는 메소드
		System.out.println("클라이언트 접속함");
		System.out.println(session.getId());
		
	}
	
	@OnMessage
	public void message(Session session, Message m){
		// session : 메세지를 보낸 클라이언트의 session객체
		// msg : jsp페이지에서 socket.send로 넘어온 데이터
		
//		Message m = new Gson().fromJson(msg, Message.class); //;Message.java에 직접 추가 후, 위의 value값에 decoders= {JsonDecoder.class} 추가함
		System.out.println(m);
		
		// 접속 session 객체를 이용해서 현재 서버에 접속한 모든 session을 알아낼 수 있는 
		// 메소드 호출하기. session.getOpenSessions()
		// -> 현재 웹소켓에 접속해서 session이 유지되고 있는 모든 session값을 반환해줌. //; =>이것이 OpenSessions 이다.
		
		// 사용자가 보낸 데이터 세션에 저장하기. (발송자 == id)
		session.getUserProperties().put("msg", m); //; m == 수신자 //;put("msg", m) 의 msg는 키값
		
		Set<Session> clients = session.getOpenSessions();
		for(  Session s  :  clients  ) {
			Message clientData = (Message) s.getUserProperties().get("msg"); //;get("msg")가 오브젝트여서 다운캐스팅해줌
			if(clientData != null) {
				if(clientData.getReceiver() != null && !clientData.getReceiver().equals("")) {
					if(clientData.getSender().equals(m.getReceiver()) || clientData.getSender().equals(m.getSender()) ) {
						// 접속된 session객체를 이용해서 데이터 전송하기.
						// session.getBasicRemote() => 접속한 세션과 연결되는 스트림을 가져옴.
						// 가져온 getBasicRemote()의 객체를 가지고 sendText()메소드를 실행.
						try {
//							s.getBasicRemote().sendText( new Gson().toJson(m) ); //;m은 객체이고 string으로 받아야 해서 json객체형태로 바꿔줘야함.
							s.getBasicRemote().sendObject(m);
						} catch (IOException e) {
							e.printStackTrace();
						} catch (EncodeException e) {
							e.printStackTrace();
						} 
						
					}
				}
			}
		}
	}
	
	
	
	
	
	
	
}

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>게시판</title>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/fonts/fonts.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materialize.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/header.css">
    <script src="views/7H_The_Town/resource/CSS,JS/header.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/footer.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/FAQ/FAQ.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materializeBtn.css">
</head>
<body>
    <div class="naviBack  col s12 m2 z-depth-2">

    </div>
    <div class="naviBar">
        <div class="header">
            <a class="notArea" href="" style="margin-right: 30px;">
                <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="100px" height="100px" style="margin: 0px 50px 0px 30px;">
            </a>
            <ul class="headerUl"><a href="">Get The Pet</a>
                <li class="headerLi topMargin"><a href="">유기견 목록</a></li>
            </ul>
            <ul class="headerUl2"><a href="">7H더 머니</a>
                <li class="headerLi topMargin"><a href="">후원현황</a></li>
                <li class="headerLi"><a href="">후원신청</a></li>
            </ul>
            <ul class="headerUl3"><a href="">게시판 페이지</a>
                <li class="headerLi topMargin"><a href="">공지사항</a></li>
                <li class="headerLi"><a href="">자유 게시판</a></li>
                <li class="headerLi"><a href="">입양 후기</a></li>
                <li class="headerLi"><a href="">나눔 게시판</a></li>
            </ul>
            <ul class="headerUl4"><a href="">고객 센터 페이지</a>
                <li class="headerLi topMargin"><a href="">FAQ</a></li>
                <li class="headerLi"><a href="">1:1 상담</a></li>
            </ul>
            <ul class="notArea" style="margin-left:130px; margin-top:35px;">
                <a href="">
                    <img src="views/7H_The_Town/resource/img/Profile_Icon.png" alt="" width="30px" height="30px">
                </a>
            </ul>
            <ul class="notArea" style="margin-left:10px; margin-top:37px;">
                <a href="">오창정 님</a>
            </ul>
            <ul class="menuIcon notArea" style="margin-left:25px; margin-top:35px; z-index: 10;">
                <img class="menuIcon" src="views/7H_The_Town/resource/img/Menu_Icon.png" alt="" width="30px" height="30px">
                
            </ul>
        </div>
    </div>
    <div class="myPage" style="margin-top: 60px; z-index: 1;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div class="myPage menuIcon col s12 m2 z-depth-2" style="z-index: 10;">
        <ul class="myPageUl">
            <li class="myPageLi"><a href="">마이페이지</a></li>
            <li class="myPageLi"><a href="">개인정보수정</a></li>
            <li class="myPageLi"><a href="">배송조회</a></li>
            <li class="myPageLi"><a href="">후원내역</a></li>
            <li class="myPageLi"><a href="">문의내역</a></li>
            <li class="myPageLi"><a href="">최애의 아이</a></li>
            <li class="myPageLi"><a href="">나의 게시글</a></li>
            <li class="myPageLi"><a href="">쪽지함</a></li>
            <li class="myPageLi"><a href="">회원탈퇴</a></li>
        </ul>
    </div>
    
    <div class="main_title_wrap">
        <h2 class="main_tlt_txt">F A Q</h2>
    </div>
	<div class="board_wrap">
        <div class="board_top_list">
            <li style="background:orange"><a href="/FAQ_Donation.html">후원문의</a></li>
            <li ><a href="/FAQ_Pet.html">입양문의</a></li>
            <li><a href="/FAQ_Etc.html">기 타</a></li>
        </div>
        <div class="board_title">
            <select name="category_select" class="ct_select">
                <option>일반 게시판</option>
                <option>나눔 게시판</option>
                <option>공지사항</option>
                <option>입양후기 게시판</option>
            </select>
            <input type="text" name="search" style="width: 200px; height: 30px; border: 1px solid lightgray; background: white; border-radius: 5px;" placeholder="검색하기">
        </div>
        <div class="board_list_wrap_body">
            <div class="board_list_wrap">
                <div class="board_list">
                    <div class="top">
                        <div class="num">번호</div>
                        <div class="title">제목</div>
                        <div class="writer">작성자</div>
                        <div class="date">작성일</div>
                        <div class="count">조회수</div>
                    </div>
                    <div class="board_list_gle">
                        <div class="num">5</div>
                        <div class="title">후원 문의 내용이 들어갑니다</div>
                        <div class="writer">이름</div>
                        <div class="date">2020.1.22</div>
                        <div class="count">33</div>
                    </div>
                    <div class="board_list_gle">
                        <div class="num">4</div>
                        <div class="title">후원 문의 내용이 들어갑니다</div>
                        <div class="writer">이름</div>
                        <div class="date">2020.1.22</div>
                        <div class="count">33</div>
                    </div>
                    <div class="board_list_gle">
                        <div class="num">3</div>
                        <div class="title">후원 문의 내용이 들어갑니다</div>
                        <div class="writer">이름</div>
                        <div class="date">2020.1.22</div>
                        <div class="count">33</div>
                    </div>
                    <div class="board_list_gle">
                        <div class="num">2</div>
                        <div class="title">후원 문의 내용이 들어갑니다</div>
                        <div class="writer">이름</div>
                        <div class="date">2020.1.22</div>
                        <div class="count">33</div>
                    </div>
                    <div class="board_list_gle">
                        <div class="num">1</div>
                        <div class="title">후원 문의 내용이 들어갑니다</div>
                        <div class="writer">이름</div>
                        <div class="date">2020.1.22</div>
                        <div class="count">33</div>
                    </div>
			    </div>
                <div class="bt_wrap">
                    <a href="/PostionPage.html">1:1 상담</a>
                </div>
            </div>
            </div>
			<div class="board_page">
                <a href="#" class="bt prev"><</a>
                <a href="#" class="bt on">1</a>
                <a href="#" class="bt">2</a>
                <a href="#" class="bt">3</a>
                <a href="#" class="bt">4</a>
                <a href="#" class="bt">5</a>
                <a href="#" class="bt next">></a>
			</div>
		</div>
	</div>
    <div class="footerArea">
        <ul class="footerUl">
            <li>이용약관</li>
            <li>|</li>
            <li>개인정보처리방침</li>
            <li>|</li>
            <li>법적고지</li>
            <li>|</li>
            <li>사업자정보확인</li>
        </ul>
        
        <p class="footerP">
            본사 : 서울특별시 강남구 테헤란로14길 6 남도빌딩 3F, 4F, 5F
        </p>
        <p class="footerP">
            상호 : 개더타운 대표자 : 파워레인저 사업자등록번호 123-456-789
        </p>
        <p class="footerP">
            개인정보보호책임자 : 이정택
        </p>
        <p class="footerP">
            TEL : 02)1234 - 5678 | FAX : 02-1111-2222 | 이메일 : ckdwjd2717@naver.com
        </p>
        <p class="footerP">
            대표전화 : 010 - 0000 - 0000
        </p>

    </div>
</body>










</html>
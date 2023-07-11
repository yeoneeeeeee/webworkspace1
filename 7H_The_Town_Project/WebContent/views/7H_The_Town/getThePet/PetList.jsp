<%@ page import="java.util.ArrayList, com.semi.pet.model.vo.*, com.semi.pet.model.vo.PetInpo, com.semi.pet.model.vo.PageInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	PetInpo pi = (PetInpo) request.getAttribute("pi");
	ArrayList<Pet> list = (ArrayList<Pet>)request.getAttribute("list");
	PageInfo pif = (PageInfo) request.getAttribute("pif");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PetList</title>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/fonts/fonts.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materialize.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/header.css">
    <script src="views/7H_The_Town/resource/CSS,JS/header.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/footer.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/getThePet/PetList.css">
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
            <ul class="headerUl3"><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7H시판</a>
                <li class="headerLi topMargin"><a href="">공지사항</a></li>
                <li class="headerLi"><a href="">자유 게시판</a></li>
                <li class="headerLi"><a href="">입양 후기</a></li>
                <li class="headerLi"><a href="">나눔 게시판</a></li>
            </ul>
            <ul class="headerUl4"><a href="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;고객 센터</a>
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

    <div class="petListBox">
        <h2>PET LIST</h2>
        <div class="petListSearch">
            <form action="">
                <img src="views/7H_The_Town/resource/img/search_Icon.png" alt="" width="20px" height="20px">
                <input type="text" placeholder=" 이름, 견종, 나이, 성별"
                style="background: white; border: 2px solid rgb(190, 190, 190); border-radius: 5px; width: 170px; height: 30px;">
            </form>
        </div>
        <div class="petBoxLine">
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
        </div>
        <div class="petBoxLine">
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
        </div>
        <div class="petBoxLine">
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
            <div class="petBoxOne col s12 m2 z-depth-1">
                <div class="bottomBorder textAlignCenter">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px">
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모님</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>사모예드</p>
                </div>
                <div class="middleBorder textAlignCenter">
                    <p>2세</p>
                </div>
                <div class="topBorder textAlignCenter">
                    <p>암컷</p>
                </div>
            </div>
        </div>

        <div class="petListPageSelect">
            <button><</button>
            <button>1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button>6</button>
            <button>7</button>
            <button>8</button>
            <button>9</button>
            <button>10</button>
            <button>></button>
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
            <br>
            상호 : 개더타운 대표자 : 파워레인저 사업자등록번호 123-456-789
            <br>
            개인정보보호책임자 : 이정택
            <br>
            TEL : 02)1234 - 5678 | FAX : 02-1111-2222 | 이메일 : ckdwjd2717@naver.com
            <br>
            대표전화 : 010 - 0000 - 0000
        </p>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/fonts/fonts.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materialize.css">
    <script src="views/7H_The_Town/resource/CSS,JS/materialize/js/materialize.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/header.css">
    <script src="views/7H_The_Town/resource/CSS,JS/header.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/footer.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materializeBtn.css">
    <style>
        .login-box {
            margin: 250px;
            display: flex;
            flex-direction: column;
            width: 500px;
            align-items: center;
            background-color: rgb(255, 255, 255);
        }

        .login-text{
            text-align: center;
        }

        #개더타운-login-btn{
            background: rgb(240, 237, 237);
            width: 100%;
            border-radius: 4px;
            border-style: none;
            font-size: 9px;
        }

        #Naver-login-btn{
            background: rgb(32, 202, 105);
            color: rgb(255, 255, 255);
            width: 100%;
            border-radius: 4px;
            border-style: none;
            font-size: 10px;
        }

        #Kakao-login-btn {
            background: rgb(243, 230, 107);
            width: 100%;
            border-radius: 4px;
            border-style: none;
            font-size: 10px;
        }

        .login-btns {
            display: flex;
            flex-direction: column;
            align-items: center;
            line-height: 2.5em;
        }
        .login-btns div{
            width: 350px;
        }

        .login-btns button{
            height: 35px;
            cursor: pointer;
        }

        .login-btns:hover {
            cursor: pointer;
        }

        .etc-btns {
            display: flex;
            flex-direction: column;
            align-items: center;
            font-weight: bold;
            color: rgb(33, 33, 33);
            margin: 0 0 10% 0;
        }

        .etc-btns button{
            cursor: pointer;
        }
    </style>
</head>
<body>

    <div class="naviBack col s12 m2 z-depth-2">
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

    <div class="outer">
        <form action="login" method="POST" onsubmit="loginForm_submit(this); return false;">
            <div class="login-box  col s12 m2 z-depth-2">
                <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px" style="margin: 50px 0px 20px 0px">
                <div>
                    <div class="login-text">
                        <div class="input-field inline">
                            <input autocomplete="off" name="loginId" id="mainAddress" type="text" style="width: 350px;">
                            <label for="mainAddress" style="font-weight: bold;">아이디</label>
                        </div>
                        <div class="input-field inline">
                            <input autocomplete="off" name="loginPwd" id="mainAddress" type="text" style="width: 350px;">
                            <label for="mainAddress" style="font-weight: bold;">비밀번호</label>
                        </div>
                    </div>

                    <div class="login-btns">
                        <div>
                            <button type="submit" id="개더타운-login-btn">7H THE TOWN 계정으로 로그인</button>
                        </div>
                        <div>
                            <button type="button" id="Naver-login-btn">Naver 계정으로 로그인</button>
                        </div>
                        <div>
                            <button type="button" id="Kakao-login-btn">Kakao 계정으로 로그인</button>
                        </div>
                    </div>

                    <hr>

                    <div class="etc-btns">
                        <div>
                            <button type="submit" id="join" onclick="return validate();" style="border-style:none; font-size: 9px; background-color:rgb(255, 255, 255);">회원가입 > </button>
                            <button type="button" id="idPw-search" style="border-style:none; font-size:9px; background-color:rgb(255, 255, 255);">아이디 / 비밀번호 찾기 ></button>
                        </div>
                    </div>
                </div>
            </div>            
        </form>
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


    <script>
        function loginForm_submit(form) {
            if (form.loginId.value.length == 0) {
                alert('로그인 아이디를 입력해주세요.');
                form.loginId.focus();

                return;
            }

            if (form.loginPwd.value.length == 0) {
                alert('비밀번호를 입력해주세요.');
                form.loginPwd.focus();

                return;
            }

            alert(loginId + '님 반갑습니다.');
        }


    </script>

</body>
</html>
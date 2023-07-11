<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Membership</title>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/fonts/fonts.css">
    <script src="views/7H_The_Town/resource/CSS,JS/materialize/js/materialize.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/header.css">
    <script src="views/7H_The_Town/resource/CSS,JS/header.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materialize.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materializeBtn.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/footer.css">
    <style>
        .outer {
            width: 1300px;
        }

        .membership-box{
            margin: 250px;
            width: 600px;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: rgb(255, 255, 255);
            border-style: none;
        }

        #check-btn, #mem-join-btn{
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 40px;
            width: 230px;
            margin-left: 4%;
            background-color: rgb(255, 255, 255);
            border-style: solid;
            border-radius: 14px;
            border-color: rgb(51, 51, 51);
            font-size: 12px;
        }

        .mambership-text{
            text-align: center;
            font-size: 11px;
            font-weight: bold;
            color:#7F8C8D;
            margin: 10% 0 10% 0;
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

    <form action="membership_join" method="POST">
        <div class="membership-box  col s12 m2 z-depth-2">
        <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="200px" height="200px" style="margin: 50px 0px 20px 0px">
        <table>
            <tr>
                <div class="input-field inline">
                    <input autocomplete="off" id="mainAddress" type="text" style="width: 550px;"  name="email" id="email"
                    onkeyup="myKey();">
                    <label for="mainAddress" style="font-weight: bold;" id="checkEmail">이메일</label>
                    <span class="helper-text" style="font-size: 10px; font-weight: bold;">이메일 형식으로 입력해주세요.</span>
                </div>
            </tr>
            <tr>
                <div class="input-field inline">
                    <input autocomplete="off" id="PWD" type="text" style="width: 550px;"   name="userPwd" id="userPwd">
                    <label id="checkPwd2" for="PWD" style="font-weight: bold;">비밀번호</label>
                    <span class="helper-text" style="font-size: 10px; font-weight: bold;">8자이상 32자 이하</span>
                </div>
            </tr>
            <tr>
                <div class="input-field inline">
                    <input autocomplete="off" id="PWDCHECK" type="password" style="width: 550px;" name="checkPwd" id="checkPwd"
                    onblur="myPwd();">
                    <label id="checkPwd2" autocomplete="off" for="PWDCHECK" style="font-weight: bold;">비밀번호 확인</label>
                    <span class="helper-text" style="font-size: 10px; font-weight: bold;">비밀번호와 동일하게 입력해주세요</span>
                </div>
            </tr>
            <tr>
                <div class="input-field inline">
                    <input id="PHONENUMBER" type="text" style="width: 550px;"  name="phone" id="phone">
                    <label id="checkPwd2" autocomplete="off" for="PHONENUMBER" style="font-weight: bold;">전화번호</label>
                    <span class="helper-text" style="font-size: 10px; font-weight: bold;">'-'제외</span>
                </div>
            </tr>
            <tr>
                <div class="input-field inline">
                    <input id="ADDRESS" type="text" style="width: 550px;" name="address" id="address">
                    <label id="checkPwd2" autocomplete="off" for="ADDRESS" style="font-weight: bold;">주소</label>
                </div>
            </tr>
            <tr>
                <div class="input-field inline">
                    <input id="ADDRESS2" type="text" style="width: 550px;" name="address2" id="address2">
                    <label id="checkPwd2" autocomplete="off" for="ADDRESS2" style="font-weight: bold;">상세주소</label>
                </div>
            </tr>
        </table>
            <div>
                <input type="submit" value="개 더 타운 가입 약관 동의" id="check-btn" style="margin: 10% 0 3% 0; line-height: 32px;">
            </div>
            <div>
                <input type="submit" id=mem-join-btn value="일반 회원가입" onclick="return validate();" style="margin: 5% 0 3% 0; line-height: 32px;">
            </div>
            </tr>
        
            <div class="mambership-text">
            개 더 타운에 가입하면 서비스 약관에 동의하게 됩니다.<br>
            게더타운 개인정보 보호정책을 확인하세요.
            </div>
        </div>
    </form>


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
        // 이메일 체크
        function myEmail() {
            const userId = document.querySelector("#email").value;

            if (email == "") {
                checkId.innerHTML = "이메일 형식이 아닙니다.";
                checkId.style.color = "red";
            } else {
                checkId.innerHTML = "사용 가능한 이메일 입니다.";
                checkId.style.color = "green";
            }
        }

        // 비밀번호 체크
        function myPwd() {
            const userPwd = document.querySelector("#userPwd").value;
            const checkPwd = document.querySelector("#checkPwd").value;
            const checkPwd2 = document.querySelector("#checkPwd2");

            if (userPwd != checkPwd) {
                checkPwd2.innerHTML = "비밀번호가 일치하지 않습니다.";
                checkPwd2.style.color = "red";
                return false;
            } else {
                checkPwd2.innerHTML = "비밀번호가 일치합니다.";
                checkPwd2.style.color = "green";
            }
        }

        function validate() {
            const email = document.querySelector("#email").value;
            const userPwd = document.querySelector("#userPwd").value;
            const checkPwd = document.querySelector("#checkPwd").value;
            const phone = document.querySelector("#phone").value;
            const address = document.querySelector("#address");
            const address2 = document.querySelector("#address2");
            const checkPwd2 = document.querySelector("#checkPwd2");

            if (email == "") {
                alert("이메일을 입력해주세요.");
                document.getElementById("email").focus();
                return false;
            } else if (userPwd == "" || checkPwd == "") {
                alert("비밀번호를 입력해주세요.");
                document.getElementById("userPwd").focus();
                return false;
            } else if (phone == "") {
                alert("전화번호를 입력하세요.");
                document.getElementById("phone").focus();
                return false;
            } else if (address == "") {
                alert("주소를 입력하세요.");
                document.getElementById("address").focus();
                return false;
            } else if (address2 == "") {
                alert("상세주소를 입력하세요.");
                document.getElementById("address2").focus();
                return false;
            } else {
                if (email.style.color == "green" && checkPwd2.style.color == "green") {
                    alert(name + "님, 회원가입이 성공적으로 완료되었습니다^^");
                    return true;
                }
            }
        }

    </script>



</body>
</html>
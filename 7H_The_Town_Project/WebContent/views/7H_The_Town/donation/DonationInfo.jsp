<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<title>게시판</title>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/fonts/fonts.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materialize.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/header.css">
    <script src="views/7H_The_Town/resource/CSS,JS/header.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/footer.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materializeBtn.css">
    <style>
        body input{
          border: 2px solid rgb(210, 210, 210, 1);
          border-radius: 10px;
        }
        body button{
          border: 2px solid rgb(210, 210, 210, 1);
          border-radius: 10px;
        }
        body select{
          border: 2px solid rgb(210, 210, 210, 1);
          border-radius: 10px;
        }
        a{
            text-decoration: none;
            color: black;
         }
        #give{
          background-color: white;
        }


        .outer{
          display: flex;
          flex-direction: column;
          align-items: center;
          
          margin-left: -250px;
          margin-top: 100px;
          margin-bottom: 400px;
        }
        h6{
          font-weight: bold;
          margin-top: 70px;
          margin-bottom: 15px;
        }

        .rightAlign{
          text-align: right;
          display: flex;
          flex-direction: column;
          align-items: end;
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
    <fieldset id="give" class="col s12 m2 z-depth-2" style="width: 900px; padding: 30px 100px 100px 100px; border-radius: 20px; position:relative; top:150px; left: 150px;">
      <legend></legend>
      <h6><b>* 후원방식</b></h6>
      <button  type="button" style="width: 200px; height: 75px;"><p>정기후원</p></button>
      <button type="button" style="width: 200px; height: 75px;"><p>일시후원</p></button>
      <br><br>
      <h6>* 후원금액</h6><br>
      <select name ="phonenumber">
        <option selected>100.000</option> <!--어디위치에 있던 기본값으로 설정됨-->
        <option>500.000</option>
        <option>1.000.000</option>
        <option>직접입력</option>
      </select>
      <input type="search" name="keyword" placeholder="직접입력" minlength="1" maxlength="20">
      <br><br>
      <br>
      <h4>결제정보</h4>
      
      <h6>* 은행명</h6>
      <select name ="phonenumber">
        <option selected>KH은행</option> <!--어디위치에 있던 기본값으로 설정됨-->
        <option>하나은행</option>
        <option>국민은행</option>
       </select> <br><br>
     카드번호 <input type="search" name="keyword" placeholder="영문, 소문자 8~15" minlength="8" maxlength="15"> <br><br>
     유효기간  <input type="search" name="keyword" placeholder="영문, 소문자"> <br><br>

      * 생년월일 : <input type="date" name="dateIn"> <br><br>

      <h6>* 이메일 </h6><br>
      <input type="search" name="keyword" size="35" >
      <div class="rightAlign">
      <label>
        <input type="checkbox" required/>
        <span>이메일 수신동의</span>
      </label>
      </div>
      <h6>* 휴대폰번호 </h6><br>
      <select name ="phonenumber">
        <option selected>010</option> <!--어디위치에 있던 기본값으로 설정됨-->
        <option>011</option>
        <option>001</option>
      </select>
      <input type="search" name="keyword" size="4" >
      <input type="search" name="keyword" size="4" > 
      <div class="rightAlign">
      <label>
        <input type="checkbox" required/>
        <span>문자 수신동의</span>
      </label>
      </div>
      <br><br><br>

      <div>
        <img src="views/7H_The_Town/resource/img/서약서.png" style="position:relative; top: px; left:px;"  width="850px" height="250px">
      </div>
      <br>
      <br>
      <br>
      <div class="rightAlign">
      <label>
        <input type="checkbox" required/>
        <span>이용약관 동의</span>
      </label>
      </div>
      <br><br>
      <div class="rightAlign">
        <a href="후원3.html">
          <input type="submit" style="width: 200px; height: 75px;" value="결제하기">
        </a>
      </div>
    </fieldset>
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
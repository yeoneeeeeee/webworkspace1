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
        .padding100{
            padding: 100px;
        }

        div {
            box-sizing: border-box;
            /* border: 1px solid  */
        }

        /* 전체를 감싸는 div wrap */
        .wrap {
            background: rgb(210, 210, 210);
            width: 1300px;
            height: auto;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* 크게 3가지 영역에 스타일 부여 */
        /* #header, #content, #footer */
        #wrap>div {
            /*class 속성이 wrap이면서 자손태그중 div태그에만 스타일 부여하겠다. */
            width: 100%;

        }

        #content5>div {
            border: 1px solid black;
        }

        #header,
        #footer {
            width: 1300px;
            height: 210px;
        }

        #content1 {
            width: 1100px;
            height: 650px;
        }
        #content1 h4{
            margin-left: 100px;
            margin-top: -300px;
        }

        #content2 {
            width: 900px;
            height: 500px;
            
        }
        #content2 img{
            width: 900px;
            height: 500px;
        }

        #content3 {
            height: 17%;
        }

        .content3box{
            background: rgb(240, 240, 240);
        }

        #content4 {
            height: 17%;
            background: rgb(240, 240, 240);
        }

        #content4 button {
            border: 1px solid rgb(210, 210, 210, 1);
            border-radius: 18px;
            border-color: black;
            background-color:seashell;
        }

        #content4 button:hover {
            cursor: pointer;
            opacity: 0.5;
        }

        #content4 button>h4 {
            position: relative;
            top: -5px;
        }

        #content5 {
            width: 1100px;
            height: 20%;
            background: rgb(240, 240, 240);
        }

        #h1 {
            text-align: center;
        }

        a {
            text-decoration: none;
            color: black;
        }

        /*ddddddd*/
        /* 브라우저 마진과 패딩 리셋 */
        * {
            margin: 0;
            padding: 0;
        }

        /* INPUT 가리기 */
        .section input[id*="slide"] {
            display: none;
        }

        /* 슬라이드 영역 - max-width 크기를 조절해주면 됩니다*/
        .section .slidewrap {
            max-width: 1200px;
            margin: 0 auto;
            overflow: hidden;
        }

        .section .slidelist {
            overflow: hidden;
            white-space: nowrap;
            font-size: 0;
        }

        .section .slidelist>li {
            display: inline-block;
            vertical-align: middle;
            width: 100%;
            transition: all .5s;
        }

        .section .slidelist>li>a {
            display: block;
            position: relative;
        }

        .section .slidelist>li>a img {
            width: 1300px;
            height: 600px;
        }

        /* 좌우로 넘기는 LABEL버튼에 대한 스타일 */
        .section .slidelist label {
            position: absolute;
            z-index: 100;
            top: 50%;
            transform: translateY(-50%);
            padding: 50px;
            cursor: pointer;
        }

        .section .slidelist .left {
            left: 0px;
            
            width: 10px;
            height: 10px;
            border-radius: px;
        }

        .section .slidelist .right {
            right: 0px;
            background: url('views/7H_The_Town/resource/img/찐방향키.png') center center / 35% no-repeat;
            border-radius: 100px;
        }

        /* INPUT 체크되면 변화값이 li까지 전달되는 스타일 */
        .section input[id="slide01"]:checked~.slidewrap .slidelist>li {
            transform: translateX(0%);
        }

        .section input[id="slide02"]:checked~.slidewrap .slidelist>li {
            transform: translateX(-100%);
        }

        .section input[id="slide03"]:checked~.slidewrap .slidelist>li {
            transform: translateX(-200%);
        }
    </style>
    
</head>

<body>

    <div class="naviBack  col s12 m2 z-depth-2">
    </div>
    <div class="naviBar">
        <div class="header">
            <a class="notArea" href="" style="margin-right: 30px;">
                <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="100px" height="100px"
                    style="margin: 0px 50px 0px 30px;">
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



    <div class="wrap  col s12 m2 z-depth-2">

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div id="content1">
            <div>
                <h4 style="margin-top: -300px; margin-left: 20px; margin-bottom: 70px;">&nbsp;&nbsp;<b>개더타운을 움직이는 하나의 힘, 사랑하는 여러분들의 후원 입니다.</b> </h4>
            </div>
            <div class="col s12 m2 z-depth-3">
                <img id="사진" src="views/7H_The_Town/resource/img/슬픈표정의_강아지사진들13 - 복사본.jpg"
                    style="top:4px; left:3px;" width="1100px" height="580">
                <p></p>
            </div>
            <h4><b>"후원" 이라는 의미는 <br> 무엇일까요 </b></h4>
        </div>
         
        <br><br><br><br><br><br><br>
        <div id="content2" style="position: relative;">
            <div>
                <h3 style="margin-left: -150px; margin-top: -100px; margin-bottom: 80px;">&nbsp;&nbsp; <b>개더타운의 구호활동</b></h3>
            </div>
            <div class="col s12 m2 z-depth-2">
                <div class="section">
                    <input type="radio" name="slide" id="slide01" checked="">
                    <input type="radio" name="slide" id="slide02">
                    <input type="radio" name="slide" id="slide03">

                    <div class="slidewrap">
                        <ul class="slidelist">
                            <li>
                                <a>
                                    <label for="slide03" class="left" style="background: url('views/7H_The_Town/resource/img/왼쪽방향키.png') center center / 35% no-repeat;;"></label>
                                    <img src="views/7H_The_Town/resource/img/유기견1.jpg">
                                    <label for="slide02" class="right" style="background: url('views/7H_The_Town/resource/img/찐방향키.png') center center / 35% no-repeat;;"></label>
                                </a>
                            </li>
                            <li>
                                <a>
                                    <label for="slide01" class="left" style="background: url('views/7H_The_Town/resource/img/왼쪽방향키.png') center center / 35% no-repeat;;"></label>
                                    <img src="views/7H_The_Town/resource/img/유기견2.jpg">
                                    <label for="slide03" class="right" style="background: url('views/7H_The_Town/resource/img/찐방향키.png') center center / 35% no-repeat;;"></label>
                                </a>
                            </li>
                            <li>
                                <a>
                                    <label for="slide02" class="left" style="background: url('views/7H_The_Town/resource/img/왼쪽방향키.png') center center / 35% no-repeat;;"></label>
                                    <img src="views/7H_The_Town/resource/img/유기견3.jpg">
                                    <label for="slide01" class="right" style="background: url('views/7H_The_Town/resource/img/찐방향키.png') center center / 35% no-repeat;;">></label>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

       <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div id="content3" style="margin-top: 150px;">
            <div>
                <h3 style="margin-bottom: 50px;">&nbsp;&nbsp;<b>후원현황</b></h1>
            </div>
            <div class="content3box col s12 m2 z-depth-2"
                style=" box-sizing: border-box; border: 1px solid; width: 1100px; height: 300px;">
                <h1>&nbsp;&nbsp;후원해주신 투개더 현황</h1>
                <div>
                    <h3 style="position: relative; left: 800px; top:70px;"><b>1,234,333명</b></h3>
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" style="position:relative; top: -45px; left:680px;" width="150px"
                        height="150px">
                </div>
            </div>

        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div id="content4" style="position: relative; bottom:100px; height: 400px;">
            <div style="text-align: center; position: relative; top:-100px">
                <h3><b>저희와 함께 걸어가보아요</b> </h3>
            </div>
            <div class="col s12 m2 z-depth-2"
                style=" box-sizing: border-box; border: 1px solid; width: 1100px; height: 400px; position: relative; top:-94px;">
                <div style=" position: relative; top:px; box-sizing: border-box; border: 1px solid; width: 1100px; height: 80px;">
                    
                    <h5 style="text-align: left;
                    position:relative; top: 20px; left:  700px;"> <b>아이들이 배고프지않게 도와주세요...</b></h5>    
            </div>
                <button type="button"
                    style="width: 180px; height: 90px; position: relative; top: 100px; left: 20px;">
                    <h4>10,000</h4>
                </button>
                <button type="button" style="width: 180px; height: 90px; position: relative; top: 100px; left: 40px;">
                    <h4>50,000</h4>
                </button>
                <button type="button" style="width: 180px; height: 90px; position: relative; top: 100px; left: 60px;">
                    <h4>100,000</h4>
                </button>
                <button type="button" style="width: 180px; height: 90px; position: relative; top: 100px; left: 80px;">
                    <h4>직접입력</h4>
                </button>
                <button type="button" style="width: 200px; height: 100px; position: relative; top: 100px; left: 130px;">
                    <h4><a href="후원2.html">후원하기</a></h4>
                </button>
               <div>
                
               </div>
            </div>
        </div>
        <br><br>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

        <div class="col s12 m2 z-depth-2" id="content5" style="position: relative; bottom:200px; right: 0px;">
            <div>
                <h3 style="text-align: center;"><b>후원절차</b></h3>
            </div>
            <div style=" box-sizing: border-box; border: 1px solid; width: 1100px; height: 359px;">
                <div>
                    <img src="views/7H_The_Town/resource/img/강아지이모티콘.png" style="position:relative; top: 10px; left:80px;"
                        width="100px" height="100px">
                    <img src="views/7H_The_Town/resource/img/강아지이모티콘.png" style="position:relative; top: 10px; left:230px;"
                        width="100px" height="100px">
                    <img src="views/7H_The_Town/resource/img/강아지이모티콘.png" style="position:relative; top: 10px; left:450px;"
                        width="100px" height="100px">
                    <img src="views/7H_The_Town/resource/img/개집.png" style="position:relative; top: 10px; left:630px;" width="100px"
                        height="100px">
                </div>
                <div>
                    <div
                        style="border: 0px solid black;  height: 200px; width: 200px; position: relative; top:54px; left: 60px;">
                        <h5><b>후원금 모음</b></h5>
                    </div>
                    <div
                        style="border: 0px solid black;  height: 200px; width: 200px; position: relative; top:-162px; left: 290px;">
                        <div>
                            <h5><b>후원금 사용계획<br>
                                    유기견 보호&비품 <br>
                                    업체선정</b>
                            </h5>
                        </div>
                    </div>
                    <div
                        style="border: 0px solid black;  height: 200px; width: 200px; position: relative; top:-378px; left: 600px;">
                        <div>
                            <h5><b>유기견 보호 및 분양</b></h5>
                        </div>
                    </div>
                    
                    <div
                        style="border:  black;  height: 200px; width: 200px; position: relative; top:-595px; left: 900px;">
                        <div>
                            <h5><b>후원금 사용 세부내역 공유</b></h5>
                        </div>
                        

                        <div>
                            <h1 style="position: relative; top: -95px; left: -700px;">▶</h1>
                            <h1 style="position: relative; top: -200px; left: -400px;">▶</h1>
                            <h1 style="position: relative; top: -310px; left: -90px;">▶</h1>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br>

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



    <script>
        let slides = document.querySelector('.slides');
        let slideImg = document.querySelectorAll('.slides li');
        currentIdx = 0;
        slideCount = slideImg.length;
        prev = document.querySelector('.prev'); //이전 버튼
        next = document.querySelector('.next'); //다음 버튼
        slideWidth = 300; //슬라이드이미지 넓이
        slideMargin = 100; //슬라이드 끼리의 마진값
        makeClone(); // 처음이미지와 마지막 이미지 복사 함수
        initfunction(); //슬라이드 넓이와 위치값 초기화 함수
        function makeClone() {
            let cloneSlide_first = slideImg[0].cloneNode(true);
            let cloneSlide_last = slides.lastElementChild.cloneNode(true);
            slides.append(cloneSlide_first);
            slides.insertBefore(cloneSlide_last, slides.firstElementChild);
        }
        function initfunction() {
            slides.style.width = (slideWidth + slideMargin) * (slideCount + 2) + 'px';
            slides.style.left = -(slideWidth + slideMargin) + 'px';
        }
        next.addEventListener('click', function () {
            //다음 버튼 눌렀을때
            if (currentIdx <= slideCount - 1) {
                //슬라이드이동
                slides.style.left = -(currentIdx + 2) * (slideWidth + slideMargin) + 'px';
                slides.style.transition = `${0.5}s ease-out`; //이동 속도
            }
            if (currentIdx === slideCount - 1) {
                //마지막 슬라이드 일때
                setTimeout(function () {
                    //0.5초동안 복사한 첫번째 이미지에서, 진짜 첫번째 위치로 이동
                    slides.style.left = -(slideWidth + slideMargin) + 'px';
                    slides.style.transition = `${0}s ease-out`;
                }, 500);
                currentIdx = -1;
            }
            currentIdx += 1;
        });
        prev.addEventListener('click', function () {
            //이전 버튼 눌렀을때
            console.log(currentIdx);
            if (currentIdx >= 0) {
                slides.style.left = -currentIdx * (slideWidth + slideMargin) + 'px';
                slides.style.transition = `${0.5}s ease-out`;
            }
            if (currentIdx === 0) {
                setTimeout(function () {
                    slides.style.left = -slideCount * (slideWidth + slideMargin) + 'px';
                    slides.style.transition = `${0}s ease-out`;
                }, 500);
                currentIdx = slideCount;
            }
            currentIdx -= 1;
        });
    </script>


</body>

</html>
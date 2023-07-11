<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="icon" type="image/png" sizes="32x32" href="views/7H_The_Town/resource/img/favicon-32x32.png">

    <link rel="stylesheet" href="views/7H_The_Town/resource/fonts/fonts.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/header_My.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materializeCuteCheckbox.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materializeCuteBtn.css">
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/materialize/css/materialize.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="views/7H_The_Town/resource/CSS,JS/mypage/MyPagePosting.css">
    <script src="views/7H_The_Town/resource/CSS,JS/header_My.js"></script>
    <script src="views/7H_The_Town/resource/CSS,JS/materialize/js/materializeCuteBtn.js"></script>
    <script src="views/7H_The_Town/resource/CSS,JS/materialize/js/materialize.js"></script>
    <title>7H THE TOWN | 고객 센터 관리(문의내용)</title>
</head>

<body>
    <div class="navi-warp">
        <div class="naviBack  col s12 m2 z-depth-2">
        </div>
        <div class="naviBar">
            <div class="header">
                <a class="notArea" href="" style="margin-right: 30px;">
                    <img src="views/7H_The_Town/resource/img/7H_THE_TOWN_LOGO.png" alt="" width="100px" height="100px"
                        style="margin: 0px 50px 0px 30px;">
                </a>
                <ul class="headerUl"><a href="">Get The Pet</a>
                    <li class="headerLi topMargin" style="line-height: 30px;"><a href="">유기견 목록</a></li>
                </ul>
                <ul class="headerUl2"><a href="">7H더 머니</a>
                    <li class="headerLi topMargin"><a href="">후원현황</a></li>
                    <li class="headerLi"><a href="">후원신청</a></li>
                </ul>
                <ul class="headerUl3"><a href="">&nbsp;&nbsp;&nbsp;7H시판</a>
                    <li class="headerLi topMargin"><a href="">공지사항</a></li>
                    <li class="headerLi"><a href="">자유 게시판</a></li>
                    <li class="headerLi"><a href="">입양 후기</a></li>
                    <li class="headerLi"><a href="">나눔 게시판</a></li>
                </ul>
                <ul class="headerUl4"><a href="">&nbsp;&nbsp;&nbsp;고객 센터</a>
                    <li class="headerLi topMargin"><a href="">FAQ</a></li>
                    <li class="headerLi"><a href="">1:1 상담</a></li>
                </ul>
                <ul class="notArea" style="margin-left:130px; margin-top:35px;">
                    <a href="">
                        <img src="views/7H_The_Town/resource/img/Profile_Icon.png" alt="" width="30px" height="30px">
                    </a>
                </ul>
                <ul class="notArea" style="margin-left:10px; margin-top:42px;">
                    <a href="/7HTHETOWN_AdminPage_Main.html">관리자 님</a>
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
    </div>
    <div class="outer">
        <div class="container">
            <div class="sidebar box">
                <div class="user-name">
                    <span class="user-txt1">안녕하세요</span><br>
                    <span class="user-txt2">OOO 회원님</span>
                </div>
                <dl class="side-navi">
                    <dt>
                        <a href="/7HTHETOWN_MyPage_Account.html">개인 정보 수정</a>
                    </dt>
                    <dt>
                        <a href="/7HTHETOWN_MyPage_Secession.html">회원탈퇴</a>
                    </dt>
                    <dt>
                        <a href="/7HTHETOWN_MyPage_Posting.html">나의 게시글</a>
                    </dt>
                    <dt>
                        <a href="/7HTHETOWN_MyPage_Like.html">최애의 아이</a>
                    </dt>
                    <dt>
                        <a href="/7HTHETOWN_MyPage_Adopt.html">나의 가족</a>
                    </dt>
                    <dt>
                        <a href="/7HTHETOWN_MyPage_Message.html">쪽지함</a>
                    </dt>
                    <dt>
                        <a href="/7HTHETOWN_MyPage_Donation.html">후원 내역</a>
                    </dt>
                    <dt>
                        <a href="/7HTHETOWN_MyPage_Inquiry.html">문의 내역</a>
                    </dt>
                </dl>
            </div>
            <form>
                <div class="mypage-content">
                    <div class="mypage-title">
                        <span>나의 게시글</span>
                    </div>
                    <div class="user-info user-info1 box">
                        <div class="info1-wrap">
                            <div class="info1-img">
                                <img src="views/7H_The_Town/resource/img/UserIcon2.png" width="110px" height="110px" />
                            </div>
                            <div class="info1-txt">
                                <div class="info1-txt1">
                                    오창정님
                                </div>
                                <div class="info1-txt2">
                                    <span>내가 쓴 게시글 : 2 &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp; 멤버십 : -</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="user-info2 ol s12 m2 z-depth-2">
                        <div class="info2-wrap">
                            <div class="info2-title">
                                내가 쓴 게시글
                            </div>
                            <div class="info2-table">
                                <table class="highlight">
                                    <thead>
                                        <tr>
                                            <td style="width:10%;">
                                                <label>
                                                    <input type="checkbox">
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td style="width:55%;">게시물 제목</td>
                                            <td style="width:35%;">작성일</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <label>
                                                    <input type="checkbox">
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>게시물1</td>
                                            <td>2023-06-04</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label>
                                                    <input type="checkbox">
                                                    <span></span>
                                                </label>
                                            </td>
                                            <td>게시물1</td>
                                            <td>2023-06-04</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="btn-wrap">
                                    <a class="waves-effect waves-light btn">게시글 삭제</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="footer">
        </div>
    </div>

</body>

</html>
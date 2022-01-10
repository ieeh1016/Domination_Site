<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>Main</title>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="./resources/css/pogo-slider.min.css">
	<link rel="stylesheet" href="./resources/css/style.css">
	<link rel="stylesheet" href="./resources/css/responsive.css">
	<link rel="stylesheet" href="./resources/css/custom.css">
	<link rel="stylesheet" href="./resources/css/timeline.css">
	<link rel="stylesheet" href="./resources/css/responsiveslides.css">
	<link rel="stylesheet" href="./resources/css/magnific-popup.css">
	<link rel="stylesheet" href="./resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="./resources/css/flaticon.css">
	<link rel="stylesheet" href="./resources/css/animate.css">
	<link rel="stylesheet" href="./resources/css/flashy.min.css">
	<link rel="shortcut icon" href="#" type="image/x-icon" />
	<link rel="apple-touch-icon" href="#" />

</head>
<body id="home" data-spy="scroll" data-target="#navbar-wd" data-offset="98">
	<%@ include file = "header.jsp" %>
    <!-- Start Banner -->
         <div class="ulockd-home-slider">
            <div class="container-fluid">
               <div class="row">
                  <div class="pogoSlider" id="js-main-slider">
                     <div class="pogoSlider-slide" style="background-image:url(./resources/images/slider_1.jpg);">
                        <div class="container">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="slide_text">
                                    <h3>지원아, 넌</h3>
                                    <h4>소중한아이야</h4>
                                    <br>
                                    <a class="readmore_bt" href="http://localhost:8080/MyProject/donation.jsp?id=D001">지원를 도와줄래요</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="pogoSlider-slide" style="background-image:url(./resources/images/slider_2.jpg);">
                        <div class="container">
                       
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="slide_text">
                                    <h3>늦지 않게</h3>
                                    <h4>도와주세요!</h4>
                                    <br>
                                    <a class="readmore_bt" href="http://localhost:8080/MyProject/donation.jsp?id=D002">늦지않게 도와줄래요</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="pogoSlider-slide" style="background-image:url(./resources/images/slider_3.jpg);">
                        <div class="container">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="slide_text">
                                    <h3>3년차</h3>
                                    <h4>엄마가 된 윤호</h4>
                                    <br>
                                    <a class="readmore_bt" href="http://localhost:8080/MyProject/donation.jsp?id=D003">윤호의 부모가 되어줄래요</a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- .pogoSlider -->
               </div>
            </div>
         </div>
         <!-- End Banner -->
    
    <!-- End Banner -->
         <!-- section -->
         <div class="section about_section layout_padding dash_bg">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="full">
                        <div class="heading_main text_align_center">
                           <h2>아이들을 위한 손길</h2>
                           
                        </div>
                        <h5 align="center">클릭하시면 해당 후원단체로 들어갈수있습니다.</h5>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                     <div class="full feature_box">
                         <div class="full icon">
                            <img class="default-block" src="./resources/images/do1.png" s/>
                            <img class="default-none" src="./resources/images/do1.png"/>
                         </div>
                         <div class="full">
                            <h4>우간다에 따뜻한 마음을</h4>
                         </div>
                         <div class="full">
                          <a href="https://happybean.naver.com/donations/H000000181850"><p>이 아이들이 하루에 한끼도 제대로 먹지 못해요. 이 아이들이 과연 배부름이라는 것을 알까요??</p></a>
                         </div>
                     </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                     <div class="full feature_box">
                         <div class="full icon">
                            <img class="default-block" src="./resources/images/do2.png"/>
                            <img class="default-none" src="./resources/images/do2.png"/>
                         </div>
                         <div class="full">
                            <h4>한끼에 2400원?</h4>
                         </div>
                         <div class="full">
                           <a href="https://happybean.naver.com/donations/H000000181794"><p>한끼에 2400원으로 무엇을 먹을수 있을까요? 민수에게 풍족한 한끼를 선물하세요</p></a>
                         </div>
                     </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                     <div class="full feature_box">
                         <div class="full icon">
                            <img class="default-block" src="./resources/images/do3.png"/>
                            <img class="default-none" src="./resources/images/do3.png" alt="#" />
                         </div>
                         <div class="full">
                            <h4>인도네시아 아이의 식사</h4>
                         </div>
                         <div class="full">
                           <a href="https://happybean.naver.com/donations/H000000181803"><p>인도네시아 아이의 걱정과 고통을 덜어주는 한 끼 식사를 선물해주세요</p></a>
                         </div>
                     </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                     <div class="full feature_box">
                         <div class="full icon">
                            <img class="default-block" src="./resources/images/do4.png"/>
                            <img class="default-none" src="./resources/images/do4.png" alt="#" />
                         </div>
                         <div class="full">
                            <h4>신생아는 생명을 잃어요</h4>
                         </div>
                         <div class="full">
                           <a href="https://happybean.naver.com/donations/H000000181623"><p>지속적인 전쟁속에서 낳은 아이를 위해 구원의 손길을 내밀어주세요</p></a>
                         </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- end section -->
        
         <div class="section dark_blue_layout white_fonts layout_padding">
            <div class="container">
               <div class="row">
                  <div class="col-md-12 col-lg-4">
                     <div class="full">
                        <div class="heading_main text_align_left" style="margin-bottom: 0;">
                           <h2><strong class="small">이메일을 입력하세요</strong><br>DESIGN</h2>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-12 col-lg-8">
                     <div class="full">
                         <div class="form_section">
                            <form class="news_submit_form">
                              <fieldset>
                                 <div class="field">
                                    <input type="email" placeholder="Enter url" name="#" required />
                                    <button>Submit</button>
                                 </div>
                              </fieldset>
                            </form>
                         </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- end section -->
         <!-- section -->
         <div class="section about_section layout_padding">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="full">
                        <div class="heading_main text_align_center margin-bottom_30">
                           <h2> <strong class="small theme_color">기부하면 기부니좋아</strong><br>저희 사이트를 소개합니다</h2>
                        </div>
                     </div>
                  </div>
               </div>
              <div class="row">

                <div class="col-sm-6 col-md-3 col-lg-3">
                   <div class="work_blog margin-top_30">
                      <img class="img-responsive" src="./resources/images/AAAA.PNG" alt="#" style="width:100%;"/>
                      <div class="hover_workblog">
                          <p>무엇보다도 인권을 최우선으로 여기며, 열악한 시설에서 행복한 가정형태로 고통당하는 이들이 행복을 느끼게 하는것이 "기부하면기부니좋아"의 이념입니다.
                      </div>
                   </div>
                </div>

                <div class="col-sm-6 col-md-3 col-lg-3">
                   <div class="work_blog margin-top_30">
                      <img class="img-responsive" src="./resources/images/BBBB.PNG" alt="#" style="width:100%;"/>
                      <div class="hover_workblog">
                          <p>"기부하면기부니좋아"는 시민들의 참여와 지원을 통해 제도상의 문제로 정부나 기관으로부터 도움을 받지 못하는 이들에게 후원하는 사이트입니다.
                      </div>
                   </div>
                </div>

                <div class="col-sm-6 col-md-3 col-lg-3">
                   <div class="work_blog margin-top_30">
                      <img class="img-responsive" src="./resources/images/CCCC.PNG" alt="#" style="width:100%;"/>
                      <div class="hover_workblog">
                          <p>투명하고 공정한 살림살이 공개를 통해 기부금을 꼭 필요한 곳에 바르게 쓰며 매년 후원금 사용 현황을 회지와 홈페이지를 통해 고지합니다.
                      </div>
                   </div>
                </div>

                <div class="col-sm-6 col-md-3 col-lg-3">
                   <div class="work_blog margin-top_30">
                      <img class="img-responsive" src="./resources/images/DDDD.PNG" alt="#" style="width:100%;"/>
                      <div class="hover_workblog">
                          <p>한순간 연민과 동정으로 인한 일시적인 후원이 아니라, 지속적이고 일상적인 기부자와 기부공간이 필요합니다.
                      </div>
                   </div>
                </div>

              </div>
            </div>
         </div>
         <!-- end section -->
         
         <!-- Start Footer -->
         <footer class="footer-box">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <div class="full">
                        <div class="heading_main text_align_center white_fonts margin-bottom_30">
                           <h2>Contact us</h2>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row">
                  
                  <div class="col-lg-3 col-md-6 col-sm-6 white_fonts">
                     <div class="full footer_blog f_icon_1">
                         <p>Address<br><small>경기도 화성시<br>동탄순환대로 21길,<br>컴퓨터공학부 현영우집</small></p>
                     </div>
                  </div>

                  <div class="col-lg-3 col-md-6 col-sm-6 white_fonts">
                     <div class="full footer_blog f_icon_2">
                        <p>Phone<br><small>010-7122-0450<br>Monday - Sunday<br>08:00 am - 05:00 pm</small></p>
                     </div>
                  </div>

                  <div class="col-lg-3 col-md-6 col-sm-6 white_fonts">
                     <div class="full footer_blog f_icon_3">
                         <p>Email<br><small>ieeh0122@naver.com<br>24 X 7 online support</small></p>
                     </div>
                  </div>

                  <div class="col-lg-3 col-md-6 col-sm-6 white_fonts">
                     <div class="full footer_blog_last">
                         <p>Social media</p>
                         <p>
                           <ul>
                              <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                              <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                              <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                           </ul>
                         </p>
                     </div>
                  </div>
              
               </div>
            </div>
         </footer>
         <!-- End Footer -->
         <div class="footer_bottom">
            <div class="container">
               <div class="row">
                  <div class="col-12">
                     <p class="crp">2021년 지능웹설계 프로젝트</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <a href="#" id="scroll-to-top" class="hvr-radial-out"><i class="fa fa-angle-up"></i></a>
      <!-- ALL JS FILES -->
      
	<%@ include file = "menufooter.jsp" %>
      
      
      <!-- End Google Map -->


   </body>
</html>

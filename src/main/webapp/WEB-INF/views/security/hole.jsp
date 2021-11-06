<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <!-- <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet"> -->
    <link rel="stylesheet" type="text/css" href="css/hole.css">
    <script src ="js/hole.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="story1">
    <div class="bg"></div>
    <div class="navbar">
        <div class="logo"><img src="https://fontmeme.com/permalink/210925/ad178911c18eded696ff02234a6c53b8.png" alt="netflix-type" border="0"></div>
        <div class="menu">
            <div class="language"><i class="fas fa-globe"></i> 한국어 <i class="fas fa-caret-down fa-lg"></i></div>
            <div class="login" type="button" onclick="location.href='/login'">로그인</div>
        </div>
    </div>
    <div class="member">
        <div class="member1">영화, TV프로그램을<br>무제한으로.</div>
        <div class="member2">다양한 디바이스에서 시청하세요. 언제든 해지하실수 있습니다.</div>
        <br>
        <div class="member3">시청할 준비가 되셨나요? 멤버십을 등록하거나 재시작하려면 이메일 주소를 입력하세요.</div>
        <br>
        <div class="member4"> 
            <form>
                <input id="input1" type="text" placeholder="이메일 주소">
                <input id="input2" type="button" onclick="location.href='/login'" value="시작하기">
            </form>
        </div>
    </div>
    </div>
    <div class="line"><hr></div>
    <div class="story2">
        <div class="STmember">
            <div class="membertext">
            <div class="sidemember1">TV로 즐기세요</div><br>
            <div class="sidemember2">스마트 TV, PlayStation, Xbox, Chromecast, Apple TV, 블루레이 플레이어 등 다양한 디바이스에서 시청하세요.</div>
            </div>
            <div class=""><img src="image/story2.gif" style="width: 550px; height: auto;"></div>
        </div>
    </div>
    <div class="line"><hr></div>
    <div class="story2">
        <div class="STmember">
            <div class=""><img src="image/story3.gif" style="width: 350px; height: auto;"></div>
            <div class="membertext">
            <div class="sidemember1">즐겨 보는 콘텐츠를 저장해 오프라인으로 시청하세요.</div><br>
            <div class="sidemember2">간편하게 저장하고 빈틈없이 즐겨보세요.</div>
            </div>
        </div>
    </div>
    <div class="line"><hr></div>
    <div class="story2">
        <div class="STmember">
            <div class="membertext">
            <div class="sidemember1">다양한 디바이스에서 시청하세요.</div><br>
            <div class="sidemember2">각종 영화와 TV 프로그램을 스마트폰, 태블릿, 노트북, TV에서 무제한으로 스트리밍하세요. 추가 요금이 전혀 없습니다.</div>
            </div>
            <div class=""><img src="image/story4.gif" style="width: 500px; height: auto;"></div>
        </div>
    </div>
    <div class="line"><hr></div>
    <div class="story2">
        <div class="STmember">
            <div class=""><img src="image/story5.png" style="width: 500px; height: auto;"></div>
            <div class="membertext">
            <div class="sidemember1">어린이 전용 프로필을 만들어 보세요.</div><br>
            <div class="sidemember2">자기만의 공간에서 좋아하는 캐릭터와 즐기는 신나는 모험. 자녀에게 이 특별한 경험을 선물하세요. 넷플릭스 회원이라면 무료입니다.</div>
            </div>
        </div>
    </div>
    <div class="line"><hr></div>
    <div class="story2">
        <div class="member">
            <div class="sidemember1">자주묻는 질문</div>
                <div class="dropdown">
                    <button onclick="myFunction()" class="dropbtn">넷플릭스란 무엇인가요?</button>
                    <div id="myDropdown" class="dropdown-content">
                        <p>
                            넷플릭스는 각종 수상 경력에 빛나는 TV 프로그램, 영화, 애니메이션, 다큐멘터리 등 다양한 콘텐츠를 인터넷 연결이 가능한 수천 종의 디바이스에서 시청할 수 있는 스트리밍 서비스입니다.<br>
                            <br>
                            저렴한 월 요금으로 일체의 광고 없이 원하는 시간에 원하는 만큼 즐길 수 있습니다. 무궁무진한 콘텐츠가 준비되어 있으며 매주 새로운 TV 프로그램과 영화가 제공됩니다.
                        </p>
                    </div>
                    <button onclick="myFunction()" class="dropbtn1">넷플릭스 요금은 얼마인가요?</button>
                    <div id="myDropdown1" class="dropdown-content1">
                        <p>스마트폰, 태블릿, 스마트 TV, 노트북, 스트리밍 디바이스 등 다양한 디바이스에서 월정액 요금 하나로 넷플릭스를 시청하세요. 멤버십 요금은 월 9,500원부터 14,500원까지 다양합니다. 추가 비용이나 약정이 없습니다.
                        </p>
                    </div>
                    <button onclick="myFunction()" class="dropbtn2">어디에서 시청할 수 있나요?</button>
                    <div id="myDropdown2" class="dropdown-content2">
                        <p>
                            언제 어디서나 시청할 수 있습니다. 넷플릭스 계정으로 로그인하면 PC에서 netflix.com을 통해 바로 시청할 수 있으며, 인터넷이 연결되어 있고 넷플릭스 앱을 지원하는 디바이스(스마트 TV, 스마트폰, 태블릿, 스트리밍 미디어 플레이어, 게임 콘솔 등)에서도 언제든지 시청할 수 있습니다.
                            <br><br>
                            iOS, Android, Windows 10용 앱에서는 좋아하는 프로그램을 저장할 수도 있습니다. 저장 기능을 이용해 이동 중이나 인터넷에 연결할 수 없는 곳에서도 시청하세요. 넷플릭스는 어디서든 함께니까요.
                        </p>
                    </div>
                    <button onclick="myFunction()" class="dropbtn3">멤버십을 해지하려면 어떻게 하나요?</button>
                    <div id="myDropdown3" class="dropdown-content3">
                        <p>
                            넷플릭스는 부담 없이 간편합니다. 성가신 계약도, 약정도 없으니까요. 멤버십 해지도 온라인에서 클릭 두 번이면 완료할 수 있습니다. 해지 수수료도 없으니 원할 때 언제든 계정을 시작하거나 종료하세요.
                        </p>
                    </div>
                    <button onclick="myFunction()" class="dropbtn4">넷플릭스에서 어떤 콘텐츠를 시청할 수 있나요?</button>
                    <div id="myDropdown4" class="dropdown-content4">
                        <p>
                            넷플릭스는 장편 영화, 다큐멘터리, TV 프로그램, 애니메이션, 각종 상을 수상한 넷플릭스 오리지널 등 수많은 콘텐츠를 확보하고 있습니다. 마음에 드는 콘텐츠를 원하는 시간에 원하는 만큼 시청하세요.
                        </p>
                    </div>
                    <button onclick="myFunction()" class="dropbtn5">아이들이 넷플릭스를 봐도 좋을까요?</button>
                    <div id="myDropdown5" class="dropdown-content5">
                        <p>
                            멤버십에 넷플릭스 키즈 환경이 포함되어 있어 자녀가 자기만의 공간에서 가족용 TV 프로그램과 영화를 즐기는 동안 부모가 이를 관리할 수 있습니다.
                            <br><br>
                            키즈 프로필과 더불어 PIN 번호를 이용한 자녀 보호 기능도 있어, 자녀가 시청할 수 있는 콘텐츠의 관람등급을 제한하고 자녀의 시청을 원치 않는 특정 작품을 차단할 수도 있습니다.
                        </p>
                    </div>
                </div>      
                <div class="member3">시청할 준비가 되셨나요? 멤버십을 등록하거나 재시작하려면 이메일 주소를 입력하세요.</div>
                    <br>
            <div class="member4"> 
                <form>
                    <input id="input1" type="text" placeholder="이메일 주소">
                    <input id="input2" type="button" onclick="location.href='/login'" value="시작하기">
                </form>
            </div>
        </div>
    </div>
    <div class="line"><hr></div>
    <div class="bottom">
        <div>질문이 있으신가요? 문의 전화:  080-001-9587</div>
        <br>
        <div class="bottomtable">
            <table border="0" width="1000" height="100">
                <tr>
                    <td>자주 묻는 질문</td> <td>고객 센터</td> <td>계정</td> <td>미디어 센터</td>
                </tr>
                <tr>
                    <td>투자 정보(IR)</td> <td>입사 정보</td> <td>넷플릭스 지원 디바이스</td> <td>이용 약관</td>
                </tr>
                <tr>
                    <td>개인 정보</td> <td>쿠키 설정</td> <td>회사 정보</td> <td>문의하기</td>
                </tr>
                <tr>
                    <td>속도 테스트</td> <td>법적 고지</td> <td>오직 넷플릭스에서</td>
                </tr>
            </table>
        </div>
        <div class="bottomlanguage">
            <i class="fas fa-globe"></i> 한국어 <i class="fas fa-caret-down fa-lg"></i>
        </div>
    <div class="bottomlast">
        <div>넷플릭스 대한민국</div>
        <br>
        넷플릭스서비시스코리아 유한회사 통신판매업신고번호: 제2018-서울종로-0426호 전화번호: 080-001-9587<br>
        대표: 레지널드 숀 톰프슨<br>
        이메일 주소: korea@netflix.com<br>
        주소: 대한민국 서울특별시 종로구 우정국로 26, 센트로폴리스 A동 20층 우편번호 03161<br>
        사업자등록번호: 165-87-00119<br>
        클라우드 호스팅: Amazon Web Services Inc.<br>
        공정거래위원회 웹사이트
    </div>
    </div>
</body>
</html>



# jquery_basic

<br><br>




설정
Window -> 설정 -> WEB -> CSS, HTML, JSP UTF-8 설정
서버 Tomcat 9.0 C:\Java\apache-tomcat-9.0.80
trimDirectiveWhitespaces="true" 공백제거


< AjaxEx01 >
create table books (
seq int not null primary key,
name varchar(100),
publisher varchar(20),
author varchar(10),
price int
);

INSERT
insert into books values ( 1, '모던 웰 디자인을 위한 HTML5 + CSS3 입문', '한빛미디어', '윤인성', 30000 );
insert into books values ( 2, '모던 웹을 위한 JavaScript + jQuery 입문', '한빛미디어', '윤인성', 32000 );
insert into books values ( 3, '모던 웹을 위한 node.j 5 프로그래밍', '한빛미디어', '윤인성', 22000 );
insert into books values ( 4, '모던 웹을 위한 HTML5 프로그래밍', '한빛미디어', '윤인성', 30000 );

<?xml version="1.0" encoding="utf-8"?>
<books>
	<book>
		<name></name>
		<publisher></publisher>
		<auther></auther>
		<price></price>
	</book>
	...
</books>

data.csv : txt 예시
csv1.jsp : contentType="text/plain; charset=UTF-8"
csv2.jsp : JDBC

data.xml : xml 예시
xml1.jsp : contentType="text/xml; charset=UTF-8"
xml2.jsp : JDBC + XML 형식 출력

data.json : json 예시, jsonlint.com JSON 형식 확인
json1.jsp : contentType="text/plain; charset=UTF-8"
json2.jsp : JDBC + JSON 형식 출력

json_test : json-simple-1.1.1.jar 테스트
json_test2 : JSON-simple + JDBC + JSON 형식 출력

ajax01 : 동기식 요청
ajax02 : 비동기식 요청
ajax02 : HTTP Status Code 확인

readcsv01 : csv parsing, split()
readxml01 : xml parsing, getElementsByTagName, 참고 https://www.w3schools.com/xml/dom_nodes_access.asp
readjson01 : json parsing


< AjaxEx011 >
empJson, readEmpJson : emp 테이블 JSON 형식으로 불러오기


< ZipcodeAjaxEx01 >
우편번호 검색기
web 1.0
	입력 페이지
	출력 페이지
web 2.0
	한 페이지 내
		form(X) / link(X)
		입력 페이지
		출력 페이지
back-end
	데이터 생성
front-end
	데이터 요청 + 파싱
model2
	: 신사
	xml.do -> xml
	json.do -> json
		
		
< EmpAjaxEx01 >
< ZipcodeAjaxEx01 > + ename 검색


< EmpAjaxEx01 >
hani1.jsp : xml 형식
readhanixml01 : 한겨래 신문 기사 목록 가져오기 (https://www.hani.co.kr/arti/RSS/)


< jQueryEx01 >
jquery01 : jQuery 특수기호 $
jquery02 : 선택자 selector, 전체 / 태그 선택자
jquery03 : 아이디 / 클래스 선택자
jquery04 : 자식 선택자
jquery05, jquery05_1 : JS/jQuery 179p, 180p
jquery06 : 태그 속 타입 / ~로 시작(끝)하는 / 입력 형식
jquery07 : 특정 위치(table), odd/even
jquery08 : 특정 위치(table), nth-child(n)
jquery09 : select 문을 통한 css 변경
jquery10 : 부모 / 자식 요소 선택자
jquery11 : array 메서드(for 내장)
jquery12 : document.body.innerHTML, Lambda
jquery13 : Array 출력
jquery14 : 현재 태그 출력
jquery15 : 전체 통합, 개별 css
jquery16 : 배열화, return map
jquery17 : css even/odd
jquery18 : css even/odd 2
jquery19 : find( .class 이름 )
jquery20 : XML parse
jquery21 : $ 사용 금지(방지), $.noConflict();
jquery22 : READ, WRITE
jquery23 : 구구단 출력
jquery24 : Button Click -> Text 추가 or 삭제
jquery25 : 이미지, 글, 태그 추가
jquery26 : 태그 복사 & 붙여넣기
jquery27 : 동적 이미지 태그 추가 (메서드 방식)
jquery28 : <form> 속성 읽기
jquery29 : checkbox, select 속성 읽기

jquery30 : JS & jQuery 245p 이벤트 리스너 - Button
jquery31 : 한 개체 여러 이벤트
jquery32 : 그룹 이벤트 등록 메서드 on
jquery33 : tag 이벤트, 이벤트 통합 후 분류
jquery34 : click 시 text 변화
jquery35 : one(), off(). 한 번만 실행
jquery36 : 마우스 (클릭) 위치 XY 값 출력
jquery37 : stopPropagation() 이벤트 전파 차단
jquery38 : preventDefault() 기본동작 제거

ex2_7 : JS & jQuery 199p 제이쿼리 배열 관련 메서드
ex2_9 : JS & jQuery 204p $.inArray( )/$.isArray( )/$.merge() 메서드
ex2_13 : JS & jQuery 211p contains( )/contents( )/has( )/not( )/end() 탐색 선택자
ex3_2 : JS & jQuery 220p attr()/removeAttr() 메서드
ex3_3 : JS & jQuery 223p addClass( )/removeClass( )/togglClass( )/hasClass() 메서드
ex3_5 : JS & jQuery 225p prop() 메서드


< jQueryEx02 >
jquery01 : Ajax 설정 + xml 출력
jquery02 : Ajax 설정 + json 출력


< jQueryUIEx02 >
참고
https://jqueryui.com/
https://github.com/jquery/jquery-ui
https://jqueryui.com/themeroller/

ui00 : 기본 디자인
ui01 : jquery ui - Button 적용

button01 : 링크 이동 & 이동 방지
button02 : icon 삽입, 내용글 삭제

check01 : 선택상자, toggle button

progressbar01 : progressbar 증가 감소

slider01 : slider 증가 감소 값 출력
slider02 : slider 실시간 증가 감소 값 출력
slider03 : https://jqueryui.com/slider/#range-vertical 예제 실습

spinner01 : spinner 값 증가 제한, 증가 폭 설정

selectmenu01 : 선택상자, 선택값

gugudan01 : gugudan 선택 -> 출력

autocomplete01 : 자동완성
autocomplete02, ./data.jsp : 외부 json파일 자동완성

accordion01 : accordion 추가 삭제
accordion02 : fill space

gugudan02 : gugudan01 + accordion

datepicker01 : HTML5 Date 기능 vs jQuery Datepicker 비교
datepicker02 : i18n, <script type="text/javascript" src="./js/i18n/datepicker-ko.js"></script>

dialog01 : Dialog 설정
dialog02 : 회원가입

menu01 : menu 설정, 비활성 처리

tabs01 : tabs 설정
tabs02 : 버튼 이벤트 - 탭 추가
tabs03 : 버튼 이벤트 - 구구단 추가

tooltip01 : tooltip 기본
tooltip02 : input type="text" 도움말



< ZipcodeAjaxEx02 > - XML
< ZipcodeAjaxEx022 > - JSON
front-end
	ajax 요청
back-end
	패턴
		hardcoding / model1 / model2
		+ framework
	데이터의 형태
		html(X)
		csv / xml / json
	sido.do									sido.jsp
	gugun.do?sido=시도 						gugun.jsp
	dong.do?sido=시도&gugun=구군				dong.jsp
	address.do?sido=시도&gugun=구군&dong=동 	address.jsp
	
protocol : xml	

요청방식		응답방식			처리페이지
X			<address>		sido.jsp
				<sido></sido>
				...
			</address>
-------------------------------------
시도			<address>		gugun.jsp
				<gugun></gugun>
				...
			</address>
-------------------------------------
시도/구군		<address>		dong.jsp
				<dong></dong>
				...
			</address>
-------------------------------------
시도/구군/동	<addresses>		address.jsp
				<address>
					<zipcode></zipcode>
					<sido></sido>
					...
				</address>
				...
			</addresses>
-------------------------------------


< DeptAjaxEx01 >
Dept Table Ajax 연결
dept01 : 기본
dept02 : 생성 완
dept03 : 삭제 완
dept04 : 수정 완


< AlbumAjaxEx01 >
board_ui01 : list
board_ui02 : write
board_ui03 : modify + delete
board_ui04 : modify.do 추가
board_ui05 : hit 수정 중


< BootstrapEx01 >
ex01 : 기본 디자인

container01 : class 별 Grid 영역 확인
container02 : class 별 Grid 영역 확인
container03 : padding, margin, bg-color, text-color options

grid01 : 행, 열 class 분리
grid02 : col 분할(기본 12분할)
grid03 : 화면 사이즈 별 Grid, 사이즈 축소 시 열 -> 행 변화
grid04 : 화면 사이즈 별 다중 option
grid05 : Nested Columns

gutter01 : Gutters

typography01 : Typography, h1 ~ h6, mark, https://www.w3schools.com/bootstrap5/bootstrap_typography.php

utilities01 : borders, visibility, https://www.w3schools.com/bootstrap5/bootstrap_utilities.php

table01 : table 설정
table02 : Responsive Tables

image01 : image rounded
image02 : Responsive Images, 반응형 이미지

jumbotron01 : Jumbotron h2

alert01 : alert-danger / alert-dismissible

button01 : button group

badge01 : Badges (message 개수 알람), 알람 수 증가/감소

progressbar01 : Animated Progress Bar
progressbar02(2) : Progress Bar % 출력

spinner01 : Spinner Buttons

pagination01 : Pagination, 페이징

listGroupBadges01 : List Group with Badges, https://www.w3schools.com/bootstrap5/bootstrap_list_groups.php

collapse01 : Collapse (Toggle 토글)
collapse_gugudan : Accordion + Gugudan

nav01 : 메뉴바 다운(세부메뉴)

gugudan01 : collapse
gugudan02 : tab

navbar01 : Navbars Forms, 

carousel01 : Carousel / Slideshow(이미지 옆으로 넘기기)

modal01 : Modal 설정

scrollspy01 : 스크롤 이동

form01 : Form - email, password, content, color bar
form02 : Form - Select-Option, Checkbox, Radio button







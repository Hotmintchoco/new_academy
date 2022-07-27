<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="js/login.find.join.js"></script>
<style type="text/css">
* {
	font-family: 'yg-jalnan', cursive
}
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
body {
	background-color: #f5f6f7;
}

select {
	width: 85px;
	height: 25px;
	outline: none;
	background: #f5f6f7;
	border: 1px solid #999;
}

a {
	color: black;
	text-decoration: none;
}

.main {
	text-align: center;
	margin-top: 20px;
}

input {
	cursor: pointer
}


/*회원가입 부분*/
.main-signup {
	text-align: center;
	width: 460px;
	margin: auto;
}

h3 {
	margin: 19px 0px 8px;
	text-align: left;
	font-size: 14px;
}

.signup-input {
	display: flex;
	/* margin: 0px 10px 8px 10px; */
	padding: 10px;
	border: solid 1px #dadada;
	background: #fff;
	cursor: pointer;
	border-radius: 30px;
}

.signup-input-c {
	display: flex;
	/* margin: 0px 10px 8px 10px; */
	padding: 10px;
	border: solid 1px #dadada;
	background: #f5f6f7;
	cursor: pointer;
}

.signup-input-c input {
	background: #f5f6f7;
}

#signup-id, #signup-pw, #signup-pww {
	height: 29px;
	border: none;
	outline: none;
	width: 100%;
}

.signup-at {
	color: rgb(150, 150, 150);
	font-size: 15px;
	margin-top: 8px;
}

.signup-input-birth {
	display: block;
	position: relative;
	width: 100%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px;
	background: #fff;
	box-sizing: border-box;
	border-radius: 30px;
}

#signup-birth-yy, #signup-birth-mm, #signup-birth-dd {
	width: 113px;
	height: 29px;
	border: none;
	outline: none;
}

#checkquestion {
   width: 200px;
   height: 51px;
   border: 1px solid #dadada;
   outline: none;
   float: left;
   background-color: white;
   border-radius: 30px;
}

#signup-name, #signup-nickname, #signup-gender, #signup-email,
 #signup-phone {
	width: 100%;
	height: 29px;
	border: none;
	outline: none;
	
}

#signup-gender {
	background-color: white;
}

#signup-birth-mm {
	background-color: white;
}

.choice span {
	margin-top: 20px;
	color: rgb(150, 150, 150);
	font-size: 13px;
}
/*회원가입버튼*/
#signup-btn {
margin: 20px 0px 50px 0px;
	width: 460px;
	line-height: 55px;
	height: 60px;
	background-color: #2ce8de;
	border: none;
	color: #fff;
	font-size: 18px;
	outline: none;
	cursor: pointer;
	border-radius: 30px;
}
</style>
<link rel="stylesheet" href="style.css">
<script src="js/login.js"></script>

</head>

<body>
	<div class="main-signup">
		<!--웹페이지 상단-->
		<header>
			<!--LOGO-->
			<h2><a href="../home.do">여행가기 좋은 날</a></h2>
		</header>

		<!--회원가입 부분-->
		<form method="post" action="join.do">
			<section class="signup-wrap">

				<div>
					<!--아이디,비번,비번재확인-->

					<h3>아이디</h3>
					<span class="signup-input"> <input id="signup-id" name="userId"
						type="text"></input> <span class="signup-at"></span>
					</span>

					<h3>비밀번호</h3>
					<span class="signup-input"> <input id="signup-pw" name="userPass"
						type="password"></input> <span class="pw-lock"></span>
					</span>

					<h3>비밀번호 재확인</h3>
					<span class="signup-input"> <input id="signup-pww" name="siginPass"
						type="password"></input> <span class="pww-lock"></span>
					</span>

				</div>

				<div style="margin-top: 35px;">
					<!--이름,생년월일,성별,이메일-->
					<h3>이름</h3>
					<span class="signup-input"> <input id="signup-name" name="userName"
						type="text"></input>
					</span>
					<h3>닉네임</h3>
					<span class="signup-input"> <input id="signup-nickname" name="nickName"
						type="text"></input>
					</span>
					<h3>생년월일</h3>
					<span style="display: flex;"> <span
						class="signup-input-birth"> <input id="signup-birth-yy" name="birth"
							type="text" placeholder="년(4자)"></input>
					</span> <span class="signup-input-birth" style="margin-left: 10px;">
							<select id="signup-birth-mm" class="selectbox" name="birth"
							onchange="">
								<option value="month">월</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
						</select>
					</span> <span class="signup-input-birth" style="margin-left: 10px;">
							<input id="signup-birth-dd" name="birth" type="text" placeholder="일"></input>
					</span>
					</span>

					<h3>성별</h3>
					<span class="signup-input"> <select id="signup-gender"
						class="selectbox" name="gender" onchange="">
							<option value="gender">성별</option>
							<option value="male">남자</option>
							<option value="female">여자</option>
					</select>
					</span>
					<div style="margin-top: 35px;">
						<!--휴대전화-->
						<h3>휴대전화</h3>
						<div style="display: flex;">
							<span class="signup-input"
								style="width: 100%; margin: 10px 0px 0px 0px"> <input
								id="signup-phone" name="phone" type="text" placeholder="전화번호 입력"></input>
							</span>
						</div>
					</div>
					<span class="choice">
						<h3>본인 확인 질문</h3> <select id="checkquestion" class="selectbox"
                  name="question" onchange="">
                     <option value="select">&nbsp;질문을 선택하세요.</option>
                     <option value="elementarySchool">&nbsp;초등학교 이름은?</option>
                     <option value="middleSchool">&nbsp;중학교 이름은?</option>
                     <option value="highSchool">&nbsp;고등학교 이름은?</option>
                     <option value="cellPhoneName">&nbsp;처음 산 휴대전화 기종은?</option>
                     <option value="car">&nbsp;처음 산 자동차 기종은?</option>
               </select>
               </span>
               <span class="signup-input"> 
               <input id="signup-email"
                  name="answer" type="text" placeholder="본인 확인 질문"></input>
               </span>
				<input type="hidden" name="email" value="random@naver.com">
				</div>
				<!--가입하기-->
				<input type="submit" id="signup-btn" value="회원가입">
			</section>
		</form>
	</div>
</body>

</html>
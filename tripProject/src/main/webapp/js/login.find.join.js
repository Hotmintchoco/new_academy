function loginCheck() {
	if (document.loginfrm.userId.value.length == 0){
		alert("아이디를 작성해 주세요");
		loginfrm.userId.focus();
		return false;
		}
	if (document.loginfrm.userPass.value == ""){
		alert("비밀번호를 작성해 주세요");
		loginfrm.userPass.focus();
		return false;
		}
	return true;
}

function idfindCheck() {
	if (document.findidfrm.idfindname.value.length == 0){
		alert("이름을 작성해 주세요");
		findidfrm.idfindname.focus();
		return false;
		}
	if (document.findidfrm.idfindemail.value.length == 0){
		alert("이메일을 작성해 주세요");
		findidfrm.idfindemail.focus();
		return false;
		}
	if (document.findidfrm.idfindbirth.value.length == 0){
		alert("생년월일을 작성해 주세요");
		findidfrm.idfindbirth.focus();
		return false;
		}
	return true;
}

function pwfindCheck() {
	if (document.findpwfrm.pwfindid.value.length == 0){
		alert("이름을 작성해 주세요");
		findpwfrm.pwfindid.focus();
		return false;
		}
	if (document.findpwfrm.pwfindemail.value.length == 0){
		alert("이메일을 작성해 주세요");
		findpwfrm.pwfindemail.focus();
		return false;
		}
	if (document.findpwfrm.pwfindphone.value.length == 0){
		alert("핸드폰번호를 작성해 주세요");
		findpwfrm.pwfindphone.focus();
		return false;
		}
	return true;
}
const regExp = {
	email: /[a-z0-9]+@[a-z]+.[a-z]{2,3}/,
	password: /((?=.*[0-9])(?=.*[a-zA-Z])|(?=.*[a-zA-Z])(?=.*[0-9]))/g,
	phone: /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/,
};

function inputCheck() {

	if (document.regForm.id.value == "") {
		alert("아이디를 입력해 주세요");
		document.regForm.id.focus();
		return;
	}

	if (!regExp.email.test(document.regForm.id.value)) {
		alert("잘못된 아이디 형식입니다. ex)xxxx@naver.com");
		document.regForm.id.focus();
		return;
	}

	if (document.regForm.pwd.value == "") {
		alert("비밀번호를 입력해 주세요");
		document.regForm.pwd.focus();
		return;
	}
	if (!regExp.password.test(document.regForm.pwd.value)) {
		alert("사용할 수 없는 비밀번호 형식입니다. ex)영문, 숫자 조합");
		document.regForm.pwd.focus();
		return;
	}
	if (document.regForm.repwd.value == "") {
		alert("비밀번호 확인");
		document.regForm.repwd.focus();
		return;
	}

	if (document.regForm.pwd.value != document.regForm.repwd.value) {
		alert("비밀번호가 일치하지 않습니다");
		document.regForm.repwd.focus();
		return;
	}

	if (document.regForm.name.value == "") {
		alert("이름을 입력해 주세요");
		document.regForm.name.focus();
		return;
	}
	if (document.regForm.birthday.value == "") {
		alert("생년월일을 입력해 주세요");
		document.regForm.birthday.focus();
		return;
	}
	if (document.regForm.email.value == "") {
		alert("이메일을 입력해 주세요");
		document.regForm.email.focus();
		return;
	}

	if (document.regForm.phone.value == "") {
		alert("휴대폰 번호를 입력해 주세요.");
		document.regForm.phone.focus();
		return;
	}

	if (!regExp.phone.test(document.regForm.phone.value)) {
		alert("휴대폰 번호 형식이 아닙니다.");
		document.regForm.phone.focus();
		return;
	}

	if (document.regForm.address.value == "") {
		alert("주소를 입력해 주세요.");
		document.regForm.address.focus();
		return;
	}


	document.regForm.submit();
}




function loginBtnClick() {
	const loginBtn = document.getElementById('login-btn');
	const id = document.getElementById('id').value;
	const idLength = id.length;
	const pw = document.getElementById('password').value;
	const pwLength = pw.length;

	if(idLength == 0 || pwLength == 0) {
		alert("아이디 또는 비밀번호를 입력해 주세요.");
		return false;
	} else {
		document.getElementById('FormLogin').submit();
	}
}
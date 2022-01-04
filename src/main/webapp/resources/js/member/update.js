function userInfoUpdatePhone() {
	const ph = document.getElementById('phone').value;
	const phLength = ph.length;
	const phCheck = document.getElementById('phone-check');
	const exp = /^\d{3}-\d{4}-\d{4}$/;
	
	if(phLength == 0) {
		phCheck.style.color = "red";
		phCheck.innerHTML = "필수 정보입니다.";
	} else if(!ph.match(exp)) {
		phCheck.style.color = "red";
		phCheck.innerHTML = '010-****-**** 형식에 맞게 입력해주세요.';
	} else {
		phCheck.innerHTML = '';
	}
}
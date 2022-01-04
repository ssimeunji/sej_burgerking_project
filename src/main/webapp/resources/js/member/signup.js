// 아이디 조건 체크
function idDuplicate() {
	const id = document.getElementById('id').value;
	const idLength = id.length;
	const idCheck = document.getElementById('id-dup-check');
	const exp = /^[a-z0-9_-]{5,20}$/;
	
	if(idLength == 0) {
		idCheck.style.color = "red";
		idCheck.innerHTML = '필수 정보입니다.';
	} else if(!id.match(exp)) {
		idCheck.style.color = "red";
		idCheck.innerHTML = '5~20자 영문 소문자, 숫자, 특수기호(_),(-)만 사용 가능합니다.';
	} else {
		idCheck.style.color = "green";
		idCheck.innerHTML = '멋진 아이디네요!';
	}
}

// 비밀번호 조건 체크
function pwCheck() {
	const pw = document.getElementById('password').value;
	const pwLength = pw.length;
	const pwCheck = document.getElementById('password-check');
	const exp = /(?=.*[a-zA-ZS])(?=.*?[#?!@$%^&*-]).{8,16}/;
	
	if(pwLength == 0) {
		pwCheck.style.color = "red";
		pwCheck.innerHTML = '필수 정보입니다.';
	} else if(!pw.match(exp)) {
		pwCheck.style.color = "red";
		pwCheck.innerHTML = '8~16자 영문 대 소문자, 숫자, 특수문자 혼합 사용 가능합니다.';
	} else {
		pwCheck.innerHTML = '';
	}
}
// 비밀번호 확인
function pwConCheck() {
	const pw = document.getElementById('password').value;
	const pwCon = document.getElementById('password-confirm').value;
	const pwConLength = pwCon.length;
	const pwConCheck = document.getElementById('password-confirm-check');
	
	if(pwConLength == 0) {
		pwConCheck.style.color = "red";
		pwConCheck.innerHTML = "필수 정보입니다.";
	} else if(pw != pwCon) {
		pwConCheck.style.color = "red";
		pwConCheck.innerHTML = '비밀번호가 일치하지 않습니다.';
	} else {
		pwConCheck.innerHTML = '';
	}
}

// 이름
function nmCheck() {
	const nm = document.getElementById('name').value;
	const nmLength = nm.length;
	const nmCheck = document.getElementById('name-check');
	
	if(nmLength == 0) {
		nmCheck.style.color = "red";
		nmCheck.innerHTML = '필수 정보입니다.';
	} else {
		nmCheck.innerHTML = '';
	}
}

// 전화번호
function phCheck() {
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

// 우편 번호, 주소
function addressSelect() {
	new daum.Postcode({
		oncomplete: function(data) {
			var addr = '';
			var extraAddr = '';
			
			if(data.userSelectedType === 'R') {
				addr = data.roadAddress;
			} else {
				addr = data.jibunAddress;
			}
			
			if(data.userSelectedType === 'R'){
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }

                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }

                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }

                document.getElementById("add-extraAddress").value = extraAddr;
            } else {
                document.getElementById("add-extraAddress").value = '';
            }

            document.getElementById('address-postcode').value = data.zonecode;
            document.getElementById("add-address").value = addr;
            document.getElementById("add-detailAddress").focus();
        }
    }).open();
}
function addrCheck() {
    const daddr = document.getElementById('add-detailAddress');
    const daddrLength = daddr.length;
    const addrCheck = document.getElementById('address-check');

    if(daddrLength == 0){
        addrCheck.style.color = 'red';
        addrCheck.innerHTML= '필수 정보입니다.';
    } else {
        addrCheck.innerHTML= '';

    }
}

// 이메일
function emCheck() {
	const em = document.getElementById('email').value;
	const emLength = em.length;
	const emCheck = document.getElementById('email-check');

	if(emLength == 0) {
		emCheck.style.color = "red";
		emCheck.innerHTML = "필수 정보입니다.";
	} else {
		emCheck.innerHTML = '';
	}
}

// 가입하기 버튼 클릭시 입력 체크, 가입완료
function signupBtnClick() {
	const id = document.getElementById('id').value;
	const idLength = id.length;
	const pw = document.getElementById('password').value;
	const pwLength = pw.length;
	const pwCon = document.getElementById('password-confirm').value;
	const pwConLength = pwCon.length;
	const nm = document.getElementById('name').value;
	const nmLength = nm.length;
	const ph = document.getElementById('phone').value;
	const phLength = ph.length;
	const daddr = document.getElementById('add-detailAddress').value;
	const daddrLength = daddr.length;
	const em = document.getElementById('email').value;
	const emLength = em.length;
	
	if(idLength == 0 || pwLength == 0 || pwConLength == 0 || nmLength == 0 || phLength == 0 || daddrLength == 0 || emLength == 0) {
		alert("필수 정보를 입력해 주세요.");
		return false;
	} else {
		document.getElementById('FormSignup').submit();
	}
}
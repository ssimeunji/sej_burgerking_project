// my 배달지(기본: 최근배달지)
function myAddrCheck() {
	var lastAddrBtn = document.getElementById('last-address-btn');
	var myAddrBtn = document.getElementById('my-address-btn');
	var lastAddrForm = document.getElementById('last-address-form');
	var myAddrForm = document.getElementById('my-address-form');
	
	lastAddrBtn.style.color = '#8d8d8d';
	lastAddrBtn.style.borderBottom = '4px solid #f2ebe6';
	lastAddrForm.style.display = 'none';
	
	myAddrBtn.style.color = '#e22219';
	myAddrBtn.style.borderBottom = '4px solid #e22219';
	myAddrForm.style.display = 'block';	
}

// 최근 배달지
function lastAddrCheck() {
	var lastAddrBtn = document.getElementById('last-address-btn');
	var myAddrBtn = document.getElementById('my-address-btn');
	var lastAddrForm = document.getElementById('last-address-form');
	var myAddrForm = document.getElementById('my-address-form');
	
	lastAddrBtn.style.color = '#e22219';
	lastAddrBtn.style.borderBottom = '4px solid #e22219';
	lastAddrForm.style.display = 'block';
	
	myAddrBtn.style.color = '#8d8d8d';
	myAddrBtn.style.borderBottom = '4px solid #f2ebe6';
	myAddrForm.style.display = 'none';	
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
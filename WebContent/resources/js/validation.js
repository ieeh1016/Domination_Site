function CheckAddDonation() {


	var donationName = document.getElementById("donationName");
	var donationPrice = document.getElementById("donationPrice");

	

	// 후원프로그램 이름체크
	if (donationName.value.length < 2 || donationName.value.length > 100) {
		alert("[후원프로그램 제목]\n최소 2자에서 최대 100자까지 입력하세요");
		donationName.select();
		donationName.focus();
		return false;
	}
	
	if (donationPrice.value.length == 0 || isNaN(donationPrice.value)) {
		alert("[후원가격]\n숫자만 입력하세요");
		donationPrice.select();
		donationPrice.focus();
		return false;
	}

	



	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	 document.newDonation.submit()
}

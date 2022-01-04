function userDeleteCheck() {
	const deleteCheck = document.getElementById('user-delete-check');
	const deleteBtn = document.getElementById('user-delete-btn');
	
	if(deleteCheck.checked == true) {
		deleteBtn.disabled = false;
	} else {
		deleteBtn.disabled = true;
	}
}
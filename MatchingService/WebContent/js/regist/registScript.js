
    function nameCheck() {
    	var text=document.getElementById('name');
    	var t=text.value.length;
        if (t >9) {		
            alert("이름은 10글자 이내만 가능합니다.");
            text.value=text.value.substring(0,9);
            text.focus();
            return false;
        }
        return true;
    }
 
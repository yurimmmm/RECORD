 $("#password").keyup(function() {
    	var pw = $("#password").val();    
        var reg = /^(?=.*?[A-z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
               
        if(false != reg.test(pw)) {
        	$('#password_possible').css("display","inline-block");
            $('#password_impossible').css("display", "none");          
        }else{
        	$('#password_impossible').css("display","inline-block"); 
            $('#password_possible').css("display", "none");        	
        }
    });

    $("#password2").keyup(function() {
        var pw1 = document.getElementById('password').value;
        var pw2 = document.getElementById('password2').value;
        
            if(pw1 != pw2 ) {
            	$('#password_discord').css("display","inline-block");
                $('#password_accord').css("display", "none");              
            } else{
            	$('#password_accord').css("display","inline-block"); 
                $('#password_discord').css("display", "none");             
            }
      }); 
      
      
function updatePassword(){
	if(document.findform.password.value == document.findform.password2.value){
		document.findform.action="update-pw";
		document.findform.submit();
	}
}
	 
	
$('#updatePw').on("click", function() {
	alert('비밀번호를 수정하였습니다.');
});
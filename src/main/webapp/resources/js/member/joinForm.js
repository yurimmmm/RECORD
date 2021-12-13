$("#userId").keyup(function() {
    	let userId = "userId="+$('#userId').val();
        $.ajax({
            url:'/member/idCheck',
            type:'post',
            data: userId,
            success:function(cnt){
                if(cnt != 1){
                    $('#userId_possible').css("display","inline-block"); 
                    $('#userId_impossible').css("display", "none");
                  	$("#joinBtn").removeAttr("disabled");  
                } else {
                    $('#userId_impossible').css("display","inline-block");
                    $('#userId_possible').css("display", "none");
                    $("#joinBtn").attr("disabled","disabled");
                }
            },
            error:function(request,status,error){
            	alert("오류!") 
            	//alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }

        });
    });
	
	$("#nickName").keyup(function() {
    	let nickName = "nickName="+$('#nickName').val();
        $.ajax({
            url:'/member/nickNameCheck',
            type:'post',
            data: nickName,
            success:function(cnt){
                if(cnt != 1){
                    $('#nickName_possible').css("display","inline-block"); 
                    $('#nickName_impossible').css("display", "none");
                    $("#joinBtn").removeAttr("disabled");
                } else {
                    $('#nickName_impossible').css("display","inline-block");
                    $('#nickName_possible').css("display", "none");
                    $("#joinBtn").attr("disabled","disabled");
                }
            },
            error:function(){
            	alert("오류!")            	
            }

        });
    });
	
    $("#password").keyup(function() {
    	var pw = $("#password").val();    
        var reg = /^(?=.*?[A-z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
               
        if(false != reg.test(pw)) {
        	$('#password_possible').css("display","inline-block");
            $('#password_impossible').css("display", "none");
            $("#joinBtn").removeAttr("disabled");        
        }else{
        	$('#password_impossible').css("display","inline-block"); 
            $('#password_possible').css("display", "none");  
            $("#joinBtn").attr("disabled","disabled");
        }
    });

    $("#password2").keyup(function() {
        var pw1 = document.getElementById('password').value;
        var pw2 = document.getElementById('password2').value;
        
            if(pw1 != pw2 ) {
            	$('#password_discord').css("display","inline-block");
                $('#password_accord').css("display", "none");    
                $("#joinBtn").attr("disabled","disabled"); 
            } else{
            	$('#password_accord').css("display","inline-block"); 
                $('#password_discord').css("display", "none");    
           		$("#joinBtn").removeAttr("disabled");   
            }
      });
      
  /* function check(){
    if(document.getElementById("email_ck").value==""){
        alert("메일 인증이 필요합니다.");
    }else{
		document.frm_join.submit();
	}   
}*/
 
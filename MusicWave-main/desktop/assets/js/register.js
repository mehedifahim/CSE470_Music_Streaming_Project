$(document).ready(function() {
	
	$("#hideLogin").click(function(){
		$("#loginForm").hide();
		$("#registerForm").show();
	});

	$("#hideRegister").click(function(){
		$("#loginForm").show();
		$("#registerForm").hide();
	});
});

function myFunction() {
    var x = document.getElementById("loginPassword");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
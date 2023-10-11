<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Forms</title>
	<style type="text/css">
	.register{
	    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
	    margin-top: 3%;
	    padding: 3%;
	}
	.register-left{
	    text-align: center;
	    color: #fff;
	    margin-top: 4%;
	}
	.register-left input{
	    border: none;
	    border-radius: 1.5rem;
	    padding: 2%;
	    width: 60%;
	    background: #f8f9fa;
	    font-weight: bold;
	    color: #383d41;
	    margin-top: 30%;
	    margin-bottom: 3%;
	    cursor: pointer;
	}
	.register-right{
	    background: #f8f9fa;
	    border-top-left-radius: 10% 50%;
	    border-bottom-left-radius: 10% 50%;
	}
	.register-left img{
	    margin-top: 15%;
	    margin-bottom: 5%;
	    width: 25%;
	    -webkit-animation: mover 2s infinite  alternate;
	    animation: mover 1s infinite  alternate;
	}
	@-webkit-keyframes mover {
	    0% { transform: translateY(0); }
	    100% { transform: translateY(-20px); }
	}
	@keyframes mover {
	    0% { transform: translateY(0); }
	    100% { transform: translateY(-20px); }
	}
	.register-left p{
	    font-weight: lighter;
	    padding: 12%;
	    margin-top: -9%;
	}
	.register .register-form{
	    padding: 10%;
	    margin-top: 10%;
	}
	.btnRegister{
	    float: right;
	    margin-top: 10%;
	    border: none;
	    border-radius: 1.5rem;
	    padding: 2%;
	    background: #0062cc;
	    color: #fff;
	    font-weight: 600;
	    width: 50%;
	    cursor: pointer;
	}
	.register .nav-tabs{
	    margin-top: 3%;
	    border: none;
	    background: #0062cc;
	    border-radius: 1.5rem;
	    width: 28%;
	    float: right;
	}
	.register .nav-tabs .nav-link{
	    padding: 2%;
	    height: 34px;
	    font-weight: 600;
	    color: #fff;
	    border-top-right-radius: 1.5rem;
	    border-bottom-right-radius: 1.5rem;
	}
	.register .nav-tabs .nav-link:hover{
	    border: none;
	}
	.register .nav-tabs .nav-link.active{
	    width: 100px;
	    color: #0062cc;
	    border: 2px solid #0062cc;
	    border-top-left-radius: 1.5rem;
	    border-bottom-left-radius: 1.5rem;
	}
	.register-heading{
	    text-align: center;
	    margin-top: 8%;
	    margin-bottom: -15%;
	    color: #495057;
	}
	
	:required{
    	border-color: #FF0000;
	}
	</style>
    <meta charset="utf-8">
 	<link rel="stylesheet" type="text/css" href="assets/css/registration.css">
 	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body background="https://png.pngtree.com/thumb_back/fh260/background/20200714/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>	
	<script>
		function inCorrectFormat() {
			var passRegex= /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
			var password = document.getElementById("password");
			if(password.value == null || password.value == "") {
				document.getElementById("passwordSpan").innerHTML = "Password must be required";
			} else if(!password.value.match(passRegex)) {
				document.getElementById("passwordSpan").innerHTML = "Password incorrect format";
			} else {
				document.getElementById("passwordSpan").innerHTML = "";
			}
		}
		
		function confirmPassword() {
			var cpassword = document.getElementById("cpassword");
			var password = document.getElementById("password");
			alert("dfvadf v  "+ cpassword.value + " " + password.value);
			if(cpassword.value == null || cpassword.value ==  "") {
				document.getElementById("cpasswordSpan").innerHTML = "Confirm Password must be required";
			} else if (cpassword.value != password.value) {
				document.getElementById("cpasswordSpan").innerHTML = "Please enter correct password";
			} else {
				document.getElementById("cpasswordSpan").innerHTML = "";
			}
		}
	
	</script>
	
	
	
	
	<c:set var="userRegistered" value='${userRegistered}' />
	<c:choose>
		<c:when test="${userRegistered =='success'}">
			<div id="myModal" class="modal fade" role="dialog">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">Success</h4>
			      </div>	
			      <div class="modal-body">
			        <p>Hey you registered successfully!</p>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			      </div>
			    </div>
			
			  </div>
			</div>
		</c:when>
		<c:when test="${userRegistered =='failed'}">
			<script type="text/javascript">
				alert("dfadfadfgasdfasdg");
			</script>
		</c:when>
	</c:choose>
	
	<div class="container register">
	     <div class="row">
	         <div class="col-md-3 register-left">
	             <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
	             <h3>Welcome</h3>
	             <p>You are 30 seconds away from earning your own money!</p>
	             <a href="login.jsp"><input type="submit" name="" value="Login"/><br/></a>
	         </div>
	         <div class="col-md-9 register-right">
	         	<form action="registration" method="post">
	             <div class="tab-content" id="myTabContent">
	                 <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
	                     <h3 class="register-heading">Apply as a Employee</h3>
	                     <div class="row register-form">
	                         <div class="col-md-6">
	                             <div class="form-group">
	                                 <input type="text" class="form-control" name="fname" id="fname" placeholder="First Name *" value="" required="required"   />
	                             </div>
	                             <div class="form-group">
	                                 <input type="text" class="form-control"  name="lname" id="lname" placeholder="Last Name *" value="" required="required" />
	                             </div>
	                             <div class="form-group">
	                                 <input type="password" class="form-control" name="password" id="password" placeholder="Password *" onblur="inCorrectFormat()" />
	                                 <span id="passwordSpan" class="passwordSpan" name="passwordSpan" style="color: red"></span>
	                             </div>
	                             <div class="form-group">
	                                 <input type="password" class="form-control"  name="cpassword" id="cpassword" placeholder="Confirm Password *" value="" required="required" onblur="confirmPassword()" />
	                             	 <span id="cpasswordSpan" class="cpasswordSpan" name="cpasswordSpan" style="color: red"></span>
	                             </div>
	                             <div class="form-group">
	                                 <div class="maxl">
	                                     <label class="radio inline"> 
	                                         <input type="radio" name="gender" value="male" required="required">
	                                         <span> Male </span> 
	                                     </label>
	                                     <label class="radio inline"> 
	                                         <input type="radio" name="gender" value="female" required="required">
	                                         <span>Female </span> 
	                                     </label>
	                                 </div>
	                             </div>
	                         </div>
	                         <div class="col-md-6">
	                             <div class="form-group">
	                                 <input type="email" class="form-control" name="email" id="email" placeholder="Your Email *" required="required" value="" />
	                             </div>
	                             <div class="form-group">
	                                 <input type="number" minlength="10" maxlength="10" name="phone" id="phone" class="form-control" placeholder="Your Phone *" required="required" value="" />
	                             </div>
	                             <div class="form-group">
	                                 <select id="squestion" name="squestion" class="form-control" required="required">
	                                     <option class="hidden"  selected disabled>Please select your Sequrity Question</option>
	                                     <option>What is your Birthdate?</option>
	                                     <option>What is Your old Phone Number</option>
	                                     <option>What is your Pet Name?</option>
	                                 </select>
	                             </div>
	                             <div class="form-group">
	                                 <input type="text" name="answer" id="answer" class="form-control" placeholder="Enter Your Answer *" value="" />
	                             </div>
	                             <div class="form-group">
	                                 <div class="maxl">
	                                     <label class="radio inline"> 
	                                         <input type="checkbox" name="lang" id="lang" value="hindi" >
	                                         <span> Hindi </span> 
	                                     </label>
	                                     <label class="radio inline"> 
	                                         <input type="checkbox" name="lang" id="lang" value="english" required="required">
	                                         <span> English </span> 
	                                     </label>
	                                     <label class="radio inline"> 
	                                         <input type="checkbox" name="lang" id="lang" value="marathi">
	                                         <span> Marathi </span> 
	                                     </label>
	                                 </div>
	                             </div>
	                             <input type="submit" class="btnRegister"  value="Register" data-toggle="modal" data-target="#myModal"/>
	                         </div>
	                     </div>
	                 </div>
	             </div>
	         	</form>
	         </div>
	     </div>
	 </div>

</body>
</html>
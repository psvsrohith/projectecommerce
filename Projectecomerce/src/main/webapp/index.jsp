<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta name="viewport" content="width=device-width initial-scale=1.0 shrink-to-fit=no">
<title>Insert title here</title>
<style>

.indexbody{
  margin:0;
  color:#6a6f8c;
  background:#c8c8c8;
  font:600 16px/18px 'Open Sans',sans-serif;
 }
 *,:after,:before
 {
  box-sizing:border-box
 }
 .clearfix:after,.clearfix:before
 {
  content:'';
  display:table;
 }
 .clearfix:after{
  clear:both;
  display:block
 }

 .sign-in-htm{
  max-height:800px;
  position:relative;
 }
 .login-wrap{
  width:100%;
  height:100%;
  margin:auto;
  max-width:525px;
  min-height:970px;
  position:relative;
 }
 .login-html{
  width:100%;
  height:100%;
  
  position:absolute;
  padding:90px 70px 50px 70px;
  background:#1eae98;
 }
	
 .login-html .sign-in-htm,
 .login-html .sign-up-htm{
  top:0;
  left:0;
  right:0;
  bottom:0;
  position:absolute;
  transform:rotateY(180deg);
  backface-visibility:hidden;
  transition:all .4s linear;
 }
 .login-html .sign-in,
 .login-html .sign-up,
 .login-form .group .check{
  display:none;
 }
 .login-html .tab,
 .login-form .group .label,
 .login-form .group .button{
  text-transform:uppercase;
  color:#393e46;
  
 }
 .login-html .tab{
  font-size:22px;
  margin-right:15px;
  padding-bottom:5px;
  margin:0 15px 10px 0;
  display:inline-block;
  border-bottom:2px solid transparent;
 }
 .login-html .sign-in:checked + .tab,
 .login-html .sign-up:checked + .tab{
  color:#fff;
  border-color:#1161ee;
 }
 .login-form{
  min-height:345px;
  position:relative;
  perspective:1000px;
  transform-style:preserve-3d;
 }
 .login-form .group{
  margin-bottom:15px;
 }
 .login-form .group .label,
 .login-form .group .input,
 .login-form .group .button{
  width:100%;
  color:#fff;
  display:block;
 }
 .login-form .group .input,
 .login-form .group .button{
  border:none;
  padding:15px 20px;
  border-radius:25px;
  background:rgba(255,255,255,.1);
 }
 .login-form .group input[data-type="password"]{
  -webkit-text-security:circle;
 }
 .login-form .group .label{
  color:#aaa;
  font-size:12px;
 }
 .login-form .group .button{
  background:#1161ee;
 }
 .login-form .group label .icon{
  width:15px;
  height:15px;
  border-radius:2px;
  position:relative;
  display:inline-block;
  background:rgba(255,255,255,.1);
 }
 .login-form .group label .icon:before,
 .login-form .group label .icon:after{
  content:'';
  width:10px;
  height:2px;
  background:#fff;
  position:absolute;
  transition:all .2s ease-in-out 0s;
 }
 .login-form .group label .icon:before{
  left:3px;
  width:5px;
  bottom:6px;
  transform:scale(0) rotate(0);
 }
 .login-form .group label .icon:after{
  top:6px;
  right:0;
  transform:scale(0) rotate(0);
 }
 .login-form .group .check:checked + label{
  color:#fff;
 }
 .login-form .group .check:checked + label .icon{
  background:#1161ee;
 }
 .login-form .group .check:checked + label .icon:before{
  transform:scale(1) rotate(45deg);
 }
 .login-form .group .check:checked + label .icon:after{
  transform:scale(1) rotate(-45deg);
 }
 .login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
  transform:rotate(0);
 }
 .login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
  transform:rotate(0);
 }

 .hr{
  height:2px;
  margin:60px 0 50px 0;
  background:rgba(255,255,255,.2);
 }
 .foot-lnk{
  text-align:center;
 }
</style>
</head>
<body class="indexbody">
 <div class="login-wrap">
 <div class="login-html">
  <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
  <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
  <div class="login-form">
   <form action="servlet1" method="post">
   <div class="sign-in-htm">
    <div class="group">
     <br><br>
     <label for="user" class="label">Username</label>
     <input id="user" type="text" class="input" name="username" placeholder="you name" required>
    </div>
    <div class="group">
     <br><br>
     <label for="pass" class="label"><b>Password : </b></label><br/>
      <input type="Password" id="password" name="password" class="input" placeholder="password" required>
      <i class="fa fa-eye" onclick="myFunction()"></i><br><br>
    </div>
    <div class="group">
     <br><br>
     <input id="check" type="checkbox" class="check" checked>
     <label for="check"><span class="icon"></span> Keep me Signed in</label>
    </div>
    <span style="color:red;"> ${error }</span><br/>
    <div class="group">
     <br><br>
     <input type="submit" class="button" value="Sign In">
    </div>
    
    <div class="hr"></div>
    <div class="foot-lnk">
     <br><br>
     <label for="tab-2">New Member?</label>
    </div>
   </div>
   </form>
  <form onsubmit="return validateForm()" action="servlet2" method="post" >
  <div class="sign-up-htm">
     <div class="group">
      <label for="name" class="label"><b>Name : </b></label>
      <input type="text" class="input" name="name" placeholder="your name" required>
     </div>
     <div class="group">
      <label for="email" class="label"><b>Email : </b></label>
      <input type="email" class="input" name="email" placeholder="Email" required>
     </div>
     <div class="group">
      <label for="dob" class="label"><b> Date of Birth : </b></label>
      <input type="Date" name="dob" class="input" placeholder="Date Of Birth" required>
     </div>
     <div class="group">
      <label for="gender" class="label"><b>Gender : </b></label>
      <input type="radio" name="gender" value="Male">Male
      <input type="radio" name="gender" value="Female">Female
      <input type="radio" name="gender" value="Others">Others
     </div>
     <div class="group">
      <label for="city" class="label"><b>City : </b></label>
      <datalist id="city">
       <select name="city">
        <option value="Vijayawada">Vijayawada</option>
        <option value="Chennai">Chennai</option>
        <option value="Mumbai">Mumbai</option>
        <option value="Delhi">Delhi</option>
       </select>
      </datalist>
      <input type="text" class="input" name="city" list="city" value="Your city">
     </div>
     <div class="group">
     
      <label for="adhar" class="label"><b>Adhar Number : </b></label>
      <input class="input" type="text" name="adhar" placeholder="Adhar Id" required>
     </div>
     <div class="group">
       <label for="passd" class="label"><b>Password : </b></label><br/>
      <input id="one" type="Password" name="passd" required class="input" placeholder="password" onkeyup="password()">
      <i class="fa fa-eye" onclick="myFunction1()" ></i>
    
      <span id="t2"></span>
     </div>
     <div class="group">
      <label for="rpassd" class="label"><b>Confirm Password : </b></label>
      <input id="two" type="Password" name="rpassd" class="input" placeholder="confirm password" required onkeyup="password()">
      <i class="fa fa-eye" onclick="myFunction2()" ></i>
      <span id="it"></span>
     </div>
     <div class="group">
      <input type="submit" class="button" value="Sign In">
     </div>
     <div class="hr"></div>
     <div class="foot-lnk">
      <label for="tab-1">Already Member?</label>
     </div>
   </div>
   </form>
  </div>
</div>
</div>
 <script src="./script2.js"></script>
</body>
</html>
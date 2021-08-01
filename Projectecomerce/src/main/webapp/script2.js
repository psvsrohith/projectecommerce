
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}



	function validateForm()
	{
				var i=document.getElementsByClassName("input");
				var user_name=i[2].value;
				var user=/^[a-zA-Z][a-zA-Z ]+$/;
				var f=0;
				alert(user_name);
				if(!(user.test(user_name)))
				{
					i[2].style.border="3px solid red";
					f=1;
				}
				var adhar_id=i[6].value;
				var adhar=/^[0-9]{12}$/;
				if(!(adhar.test(adhar_id)))
				{
					i[6].style.border="3px solid red";
					f=1;
				}
				var pass=i[7].value;
				var cpass=i[8].value;
				var res;
				var message=document.getElementById("t2");
				if (!(pass.match(/[a-z]/g) && pass.match(/[A-Z]/g) && pass.match(/[0-9]/g) && pass.match(/[^a-zA-Z\d]/g) && pass.length >= 8))
				{	
					i[7].style.border="3px solid red";
					res = "password must contain atleast 1 uppercase,digit,lowercase,symbol length atleast 8.";
					
					message.innerHTML=res;
					document.getElementById('t2').style.color = 'red';
					f=1;
				}
				var message1=document.getElementById("it");
				if(pass!=cpass)
				{
					res="password is not matching with confirm password!";
					
					message1.innerHTML=res;
					document.getElementById('it').style.color = 'red';
					i[7].style.border="3px solid red";
					i[8].style.border="3px solid red";
					f=1;
				}
				if(f==0)
				{
					return true;
				}
				return false;
	}
	function password()
	{
				var i=document.getElementsByClassName("input");
	           	var pass=i[7].value;
				var cpass=i[8].value;
				var res;
				var message=document.getElementById("t2");
				if (!(pass.match(/[a-z]/g) && pass.match(/[A-Z]/g) && pass.match(/[0-9]/g) && pass.match(/[^a-zA-Z\d]/g) && pass.length >= 8))
				{	
					i[7].style.border="3px solid red";
					res = "**password must contain atleast 1 uppercase,digit,lowercase,symbol length atleast 8.";
					message.innerHTML=res;
					document.getElementById('t2').style.color = 'red';
					f=1;
				}
				else
				{
					i[7].style.border="3px solid green";
					document.getElementById('t2').style.color = 'green';
					message.innerHTML="password is accepted";
				}
				var message1=document.getElementById("it");
				if(pass!=cpass)
				{
					res="password is not matching with confirm password!";
					
					message1.innerHTML=res;
					document.getElementById('it').style.color = 'red';
					i[7].style.border="3px solid red";
					i[8].style.border="3px solid red";
					f=1;
				}
				else
				{
					i[7].style.border="3px solid green";
					i[8].style.border="3px solid green";
					document.getElementById('it').style.color = 'green';
					message1.innerHTML="passwords are matched";
				}
				
	    
	}
function myFunction() 
{
  	var x = document.getElementById("password");
  	if (x.type === "password") 
  	{
    	x.type = "text";
  	} 
  	else 
  	{
    	x.type = "password";
		 this.classList.toggle('fa-eye-slash');
  	}
  	
 }
 
 function myFunction1() 
{
  	var x = document.getElementById("one");
  	if (x.type === "password") 
  	{
    	x.type = "text";
  	} 
  	else 
  	{
    	x.type = "password";
		 this.classList.toggle('fa-eye-slash');
  	}
  	
 }
 
function myFunction2() 
{
  	var x = document.getElementById("two");
  	if (x.type === "password") 
  	{
    	x.type = "text";
  	} 
  	else 
  	{
    	x.type = "password";
		 this.classList.toggle('fa-eye-slash');
  	}
  	
 }
 
 
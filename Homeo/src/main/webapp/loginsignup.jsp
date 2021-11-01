<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="assets\css\login-signup.css" />
    <title>Homeo-Amend</title>
    <link rel="icon" type="image/x-icon" href="assets/images/logo1.jpg" />
</head>

<body>
    <div class="container">
        <div class="forms-container">
            <div class="signin-signup">
                <form method="get" action="http://localhost:8080/Homeo/login"  class="sign-in-form">
                    <h2 class="title">Sign in</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input name="email_id" type="email" placeholder="Username" />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input name="pwd" type="password" placeholder="Password" />
                    </div>
                    <input type="submit" value="Login" class="btn solid" />
                    <div class="social-text"><a href="index.jsp">Back to Homepage</a></div>
                    
                </form>
                <form onsubmit="return validateForm()" method="get" action="http://localhost:8080/Homeo/signup" class="sign-up-form">
                    <h2 class="title">Sign up</h2>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input name="first_name" id="fname" type="text" placeholder="First Name" />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-user"></i>
                        <input name="last_name" id="lname" type="text" placeholder="Last Name" />
                    </div>
                    <select class="input-field" name="Gender" >
                        <option value="" disabled selected>Select your Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Others">Others</option>
                    </select>
                    <div class="input-field">
                            <i class="fas fa-envelope"></i>
                            <input name="DOB" id="date" placeholder="Date Of Birth" onfocus="(this.type='date')" onblur="(this.type='text')" required type="text" >
                    </div>
                    <div class="input-field">
                      <i class="fas fa-envelope"></i>
                      <input name="contact" id="Contact" required type="text" placeholder="Contact Number"/>
                    </div>      
                    <div class="input-field">
                        <i class="fas fa-envelope"></i>
                        <input name="email_id" id="email" type="email" placeholder="Email" />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input name="pwd" id="password" type="password" placeholder="Password" />
                    </div>
                    <div class="input-field">
                        <i class="fas fa-lock"></i>
                        <input name="cpwd" id="cpassword" type="password" placeholder="Confrim Password" />
                    </div>
                    <div class="input-field">
                      <i class="fas fa-lock"></i>
                      <input name="history" id="Message" type="text" placeholder="Medical History"/>
                  </div>
                    <input id="submit" type="submit" class="btn" value="Sign up" />
                    <div class="social-text"><a href="index.jsp">Back to Homepage</a></div>
                </form>
            </div>
        </div>

        <div class="panels-container">
            <div class="panel left-panel">
                <div class="content">
                    <h3>New here ?</h3>
                    <p>
                        Please Signup to have our service.
                    </p>
                    <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
                </div>
                <img src="assets/images/login-signup/log.svg" class="image" alt="" />
            </div>
            <div class="panel right-panel">
                <div class="content">
                    <h3>One of us ?</h3>
                    <p>
                        Please Signin to have our service.
                    </p>
                    <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
                </div>
                <img src="assets/images/login-signup/register.svg" class="image" alt="" />
            </div>
        </div>
    </div>
    <script src="assets/js/login-signup.js"></script>
</body>

</html>
<script>


    function validateForm()
    {
      var Contact=document.getElementById("Contact").value;
      var em=document.getElementById("email").value;
      var pw=document.getElementById("password").value;
      var cpw=document.getElementById("cpassword").value;
      var fName=document.getElementById("fname").value;
      var lName=document.getElementById("lname").value;
      var userName=document.getElementById("username").value;
     
      if(validateFname(fName)&&validateLname(lName)&&validateEM(em)&&validateUN(userName)&&validatePW(pw)&&validateCPW(cpw,pw)&&validateCnt(Contact))
      {
        alert("Account created successfully")
        return true
      }
      else{
        return false
      }
    }
    function validateCnt(Contact)
  {
    var regex=/^(7\d|8\d|9\d|6\d)\d{9}$/
    if(Contact.length != 10){
        alert("Incorrect Phone Number! \nEnter a valid number");
        return false;
      }
    if(!regex.test(Contact)) {
        alert("Incorrect Contact! \nEnter a valid number");
        return false;
    }
      return true
  }
    function validateEM(em)
    {
      if(em.endsWith("@gmail.com"))
        return true;
      else if(em=="")
      {
        alert("Incorrect Email! \nEmpty Email")
        return false;
      }
      else
      {
        alert("Incorrect Email! \nNot a Valid Email")
        return false;
      }
    }
    
    function validatePW(pw) {
      var minNumberofChars = 6;
      var maxNumberofChars = 16;
      var regularExpression  = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
    //  (?=.*[0-9]) - Assert a string has at least one number;
    //(?=.*[!@#$%^&*]) - Assert a string has at least one special character.
    
    
      if(pw.length < minNumberofChars || pw.length > maxNumberofChars){
        alert("Incorrect Password! \nPassword length must be between 6 and 16");
        return false;
      }
      if(!regularExpression.test(pw)) {
        alert("Incorrect Password! \nPassword should contain atleast one number and one special character");
        return false;
      }
      return true
    }
    
    function validateCPW(cpw,pw) {
    
    if(cpw == pw)
    {
      return true
    }
    else{
      alert("Password Mismatch")
      return false
    }
    return true
    }
    
    function validateFname(fn)
    {
      var regex = /^[a-z ,.'-]+$/i
    
      if(fn == "")
      {
        alert("Incorrect Firstname! \nFirstname Should not be empty")
        return false;
      }
      if(!regex.test(fn))
      {
        alert("Incorrect Firstname! \nFirstname can only contain alphabets, comma, period, apostrophe, hyphen")
        return false;
      }
      return true
    }
    function validateLname(ln)
    {
      var regex = /^[a-z ,.'-]+$/i
    
      if(ln == "")
      {
        alert("Incorrect Lastname! \nLastname Should not be empty")
        return false;
      }
      if(!regex.test(ln))
      {
        alert("Incorrect Lastname! \nLastname can only contain alphabets, comma, period, apostrophe, hyphen")
        return false;
      }
      return true
    }
    
    function validateUN(un)
    {
      var regex = /^[a-z0-9_-]{3,16}$/igm
    
      if(un == "")
      {
        alert("Incorrect Username! \nUsername Should not be empty")
        return false;
      }
      if(!regex.test(un))
      {
        alert("Incorrect Username! \nUsername can only contain alphabets, Underscore, hyphen")
        return false;
      }
      return true
    }
    
    </script>
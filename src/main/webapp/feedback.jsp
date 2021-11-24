<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">

    <!-- fa -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    
    <!-- Style -->
    <link rel="stylesheet" href="assets/css/dashboard-style.css">
    <link rel="stylesheet" href="assets/css/book_an_appointment.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <style> body{ background-image: none;}</style>

    <title>Homeo-Amend</title>
    <link rel="icon" type="image/x-icon" href="assets/images/logo1.jpg" />
</head>

<body>

    <!-- Header Starts Here--->
    <header>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Homeo Amend</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item active"><a class="nav-link" href="http://localhost:8080/Homeo/dashboard"><span class="fa fa-home"></span><span class="menu-text">Home</span></a></li>
                <li class="nav-item"><a class="nav-link" href="book_an_appointmentn.jsp" ><span class="fa fa-calendar-check"></span><span class="menu-text">Book an appointment</span></a></li>

                <li class="nav-item"><a class="nav-link" href="http://localhost:8080/Homeo/medical-record"><span class="fa fa-notes-medical"></span><span class="menu-text">View medical records</span></a></li>
               <!--  <li class="nav-item"><a class="nav-link" href="#"><span class="fas fa-user"></span><span class="menu-text">Profile settings</span></a></li>-->
                <li class="nav-item active"><a class="nav-link" href="feedback.jsp"><span class="fas fa-comment-medical"></span><span class="menu-text">Feedback</span></a></li>
            <li class="nav-item"><a class="nav-link" href="#"><span class="fas fa-user"></span><span class="menu-text"><h8>${name}</h8></span></a></li>
              </ul>
            </div>
        </nav>

    </header>

    <!-- content -->

        <form method="get" action="http://localhost:8080/Homeo/feedback">
            <div class="boa">
                <div class="form">
                    <div class="title">Feedback</div>
                    <div class="input-container ic1">
                      <input name="name" class="form-elements" required type="text" placeholder="Doctor's Name"/>
                    </div>
                    <div class="input-container ic2">
                        <input name="feedback" class="form-elements" type="text" placeholder="Your feedback"/>
                    </div>
                    <div class="input-container ic2">
                        <input type="submit" value="submit" class="btn solid">
                    </div>
                </div>
            </div>
        </form>


   
    <!-- Footer --->

    <footer class="footer">
        <div class="copy">
            <div class="container">
                <a href="#">Designed and Developed by NCPG13</a>
                
                <span>
                <a><i class="fab fa-github"></i></a>
                <a><i class="fab fa-google-plus-g"></i></a>
                <a><i class="fab fa-pinterest-p"></i></a>
                <a><i class="fab fa-twitter"></i></a>
                <a><i class="fab fa-facebook-f"></i></a>
        </span>
            </div>
        </div>
    </footer>

</body>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

<script src="assets/js/dashboardMain.js"></script>


</html>
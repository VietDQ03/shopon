<%-- 
    Document   : SignUp
    Created on : Oct 25, 2023, 12:46:43 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="signup" method="post" class="form-signup">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
            <p class="text-danger">${mess}</p>
            <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus=""><br>
            <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus=""><br>
            <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus=""><br>

            <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
            <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
        </form>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>

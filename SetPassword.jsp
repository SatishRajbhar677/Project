<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-image: url("image/back.jpg");
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }

            .container {
                width: 300px;
                padding: 20px;
                background-color: rgba(255, 255, 255, 0.8); /* Adding transparency to the container */
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }

            .form-group {
                margin-bottom: 20px;
            }

            input[type="password"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
                box-sizing: border-box;
            }
            #passwordError {
                color: red;
                font-size: 14px;
                margin-top: 5px;
            }
            input[type="submit"] {
                width: 100%;
                padding: 10px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 3px;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <form action="UpdatePassword.jsp" onsubmit="return myFunction()">
                 <% String email=(String)request.getAttribute("Gemail");%>
                 <%request.setAttribute("gemail", email);%>
                 <input type="hidden" name="email" value="<%= email %>">
                <div class="form-group">
                    <input type="password" placeholder="Create New Password" name="pass1" id="pass1">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Confirm Password" name="pass2" id="pass2">
                </div>
                <div id="passwordError"></div>
                <input type="submit" value="Submit">
            </form>
        </div>
        <script>
            function myFunction() {
                var password = document.getElementById("pass1").value;
                var confirmPassword = document.getElementById("pass2").value;
                var passwordError = document.getElementById("passwordError");

                if (password !== confirmPassword) {
                    passwordError.textContent = "Password does not match";
                    console.log("password");
                    return false;
                } else {
                    passwordError.textContent = "";
                }
            }
        </script>
    </body>
</html>

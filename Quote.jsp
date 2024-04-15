<%-- 
    Document   : Quote
    Created on : 23 Mar, 2024, 2:03:07 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Card Gallery</title>
        <link rel="stylesheet" href="Quote1.css">
    </head>

    <body>
        <% String uname = "";
            Cookie[] ck = request.getCookies();
            if (ck != null) {
                for (int i = 0; i < ck.length; i++) {
                    if (ck[i].getName().equals("name")) {
                        uname = ck[i].getValue();
                    }
            }
        }%>

        <header class="headera">
            <div class="barnd">
                <h1>Gurukripa Interior</h1>
            </div>
            <nav class="navbar">
                <a href="#HOME">HOME</a>
                <a href="#ABOUT">ABOUT</a>
                <a href="#Testimonials">TESTIMONIALS</a>
                <a href="#BLOG">BLOG</a>
                <a href="contact.html">CONTACT</a>
                <a href="loginpage.html">LOGIN</a>
                <a href="adminpage">quatation request</a>
                <a href="">Log Out</a>
            </nav>
        </header>
        <div class="card-container">
            <div class="column">
                <div class="card">
                    <img src="image/kitchen1a.jpg" alt="Image 1">
                    <p><h2>This is a Kitchen Area</h2><br>The size of this Kitchen area is 10x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="image/bedrooom1.jpg" alt="Image 2">
                    <p><h2>This is a Bed Room</h2><br>The size of the Bed Room 9x15</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="image\home.jpg"alt="Image 3">
                    <p><h2>This is a Living Room</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="image\living1.jpg" alt="Image 2">
                    <p><h2>This is a Pooja Room</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="image\home2.jpg"alt="Image 3">
                    <p><h2>This is a T.V Unit</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="image\bed12.jpg"alt="Image 3">
                    <p><h2>This is a Living Room</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="image\c.jpg"alt="Image 3">
                    <p><h2>This is a Bed Room</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="image\living2.jpg"alt="Image 3">
                    <p><h2>This is a Living Area</h2><br>The size of this Living Area is 10x20</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
            </div>


            <div class="column">
                <div class="card">
                    <img src="image\living3.jpg"alt="Image 3">
                    <p><h2>This is a Living Area</h2><br>The size of this Living Area is 10x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="image\kitchen1e.jpg"alt="Image 3">
                    <p><h2>This is a Kitchen Area</h2><br>The size of the Kitchen Area is 9x9</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="image\kitchen1a.jpg" alt="Image 4">
                    <p><h2>This is a Bath Room</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="project1\kitchen1a.jpg"alt="Image 3">
                    <p><h2>This is a T.V Unit</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="project1\kitchen1a.jpg"alt="Image 3">
                    <p><h2>This is a Living Room</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>

                </div>
                <div class="card">
                    <img src="project1\kitchen1a.jpg"alt="Image 3">
                    <p><h2>This is a T.V Unit</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="project1\kitchen1a.jpg" alt="Image 5">
                    <p><h2>This is a Pooja Room</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="project1\kitchen1a.jpg" alt="Image 6">
                    <p><h2>This is a Living Room</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
            </div>



            <div class="column">
                <div class="card">
                    <img src="image\living5.jpg"alt="Image 3">
                    <p><h2>This is a Living Area</h2><br>The size of this Living Area is 12x20</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="image\kitchen1f.jpg"alt="Image 3">
                    <p><h2>This is a Kitchen Area</h2><br>The size of this Kitchen area is 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="project1\kitchen1a.jpg" alt="Image 3">
                    <p><h2>This is a Kitchen Area</h2><br>The size of this Kitchen area is 10x15</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="D:\Project/back.jpg"alt="Image 3">
                    <p><h2>This is a Living Area</h2><br>The size of this Living Area is 15x20</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="project1\kitchen1a.jpg" alt="Image 3">
                    <p><h2>This is a wordrobe</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="project1\kitchen1a.jpg" alt="Image 7">
                    <p><h2>This is a Pooja Room</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="project1\kitchen1a.jpg" alt="Image 8">
                    <p><h2>This is a T.V Unit</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
                <div class="card">
                    <img src="project1\kitchen1a.jpg" alt="Image 9">
                    <p><h2>This is a wordrobe</h2><br>the size of the wordrobeis 9x12</p>
                    <button onclick="handleClick()">Get Quot</button>
                </div>
            </div>
        </div>



        <script>
            function handleClick() {
                if (document.cookie.length !== 0) {
                     window.location.href = "quotpage.html";
                } else {
                    window.location.href = "loginpage.html";
                }
            };
        </script>
    </body>
</html>

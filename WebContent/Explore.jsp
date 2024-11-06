<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fashion Collection 2021</title>
    <!-- Link to Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        header {
            box-shadow: 0 2px 4px rgba(226, 222, 222, 0);
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 2rem;
        }

        .logo {
            font-size: 1.5rem;
            color: #ff3366;
            font-weight: bold;
        }

        .nav-links {
            list-style: none;
            display: flex;
            gap: 1.5rem;
        }

        .nav-links li a {
            text-decoration: none;
            color: #000;
            font-weight: 500;
        }

        .icons {
            display: flex;
            gap: 1rem;
        }

        .icons img {
            width: 24px;
            height: 24px;
        }

        .hero {
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 4rem 2rem;
            height: 100vh; /* Full viewport height */
            overflow: hidden;
        }

        .slider {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            z-index: -1;
        }

        .slide {
            display: none;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
        }

        .slide.active {
            display: block;
        }

        .hero-text {
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            max-width: 50%;
        }

        .hero-text h2 {
            font-size: 1.2rem;
            color: #666;
        }

        .hero-text h1 {
            font-size: 6rem; /* Increase the font size */
            margin: 0.3rem 0; /* Adjust margin to move it a bit up */
            color: #000; /* Change color to black */
            font-family: 'Great Vibes', cursive; /* Change font to calligraphy */
        }

        .hero-text button {
            padding: 1rem 2rem; /* Increased padding for a larger button */
            background-color: #ff3366;
            color: #ffffff;
            border: none;
            cursor: pointer;
            font-size: 1.5rem; /* Increased font size for the button text */
            margin-top: 1rem;
            border-radius: 5px; /* Optional: adds rounded corners to the button */
        }

        .hero-text button:hover {
            background-color: #ff6680; /* Optional: adds a hover effect */
        }
    </style>
</head>
<body>
    <main>
        <section class="hero">
            <div class="slider">
                <div class="slide active" style="background-image: url(https://assets.teenvogue.com/photos/633dc59c75e82ee8840cec31/16:9/w_1280,c_limit/GettyImages-1351172756.jpg);"></div>
                <div class="slide" style="background-image: url(https://images.moneycontrol.com/static-mcnews/2023/12/MixCollage-28-Dec-2023-02-02-PM-4871-770x433.jpg?impolicy=website&width=770&height=431);"></div>
            </div>
            <div class="hero-text">
                <h1>ZenCart !!!!</h1>
                <a href="Homes.jsp">
                    <button class="btn btn-success">Explore Now!</button>
                    </a>
            </div>
        </section>
    </main>
    <script>
        let slideIndex = 0;
        const slides = document.querySelectorAll('.slide');

        function showSlides() {
            slides.forEach((slide, index) => {
                slide.classList.remove('active');
                if (index === slideIndex) {
                    slide.classList.add('active');
                }
            });
            slideIndex = (slideIndex + 1) % slides.length;
        }

        setInterval(showSlides, 3000); // Change image every 3 seconds
    </script>
</body>
</html>
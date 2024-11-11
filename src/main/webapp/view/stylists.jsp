<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="view/css/stylists.css"> <!-- Add your stylesheet for the Stylists page -->
</head>
<body>


<section class="stylists-section">
    <h1>Our Stylists</h1>
    <p>Meet our talented stylists who are dedicated to providing the best service for your hair needs.</p>
    <div class="stylists-container">
        <div class="stylists-container">
            <div class="stylist">
                <img src="images/liz.webp" alt="Liz" /> <!-- Replace with actual image path -->
                <h2>Liz</h2>
                <p><strong>Owner/Master Stylist</strong></p> <!-- Title -->
                <!-- Buttons for View More and Book Now -->
                <div class="button-container">
                    <button onclick="location.href='${pageContext.request.contextPath}/index.jsp?currentPage=viewMoreLiz'">View More</button> <!-- Link to a detailed page for Liz -->
                    <button onclick="location.href='${pageContext.request.contextPath}/index.jsp?currentPage=bookNow'">Book Now</button> <!-- Link to the booking page -->


                </div>
            </div>

            <div class="stylist">
                <img src="images/Ayva.webp" alt="Ayva" /> <!-- Replace with actual image path -->
                <h2>Ayva</h2>
                <p><strong>Salon Stylist</strong></p> <!-- Title -->
                <!-- Buttons for View More and Book Now -->
                <div class="button-container">
                    <button onclick="location.href='${pageContext.request.contextPath}/index.jsp?currentPage=viewMoreAyva'">View More</button> <!-- Link to a detailed page for Ayva -->
                    <button onclick="location.href='../index.jsp?currentPage=bookNow'">Book Now</button> <!-- Link to the booking page -->
                </div>
            </div>

            <div class="stylist">
                <img src="images/Helen.webp" alt="Helen" /> <!-- Replace with actual image path -->
                <h2>Helen</h2>
                <p><strong>Master Stylist</strong></p> <!-- Title -->
                <!-- Buttons for View More and Book Now -->
                <div class="button-container">
                    <button onclick="location.href='viewMoreHelen.html'">View More</button> <!-- Link to a detailed page for Helen -->
                    <button onclick="location.href='../index.jsp?currentPage=bookNow'">Book Now</button> <!-- Link to the booking page -->
                </div>
            </div>
            <!-- Add more stylists if needed -->
        </div>
        <!-- Add more stylists if needed -->
    </div>
</section>
</body>
</html>

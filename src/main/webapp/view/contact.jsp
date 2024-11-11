<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="view/css/contact.css"> <!-- Kết nối file CSS -->
</head>
<body>
<section class="contact-section">
    <h1>Contact Us</h1>
    <p>We would love to hear from you! Please reach out using the details below:</p>
    <div class="contact-info">
        <div class="address">
            <h2><i class="fas fa-map-marker-alt icon"></i>Our Address</h2>
            <p>70 To Ky, Tan Chanh Hiep Ward, District 12, Ho Chi Minh City, Vietnam</p>
        </div>
        <div class="contact-item">
            <h2><i class="fas fa-phone icon"></i>Phone Number</h2>
            <p>037 920 9120<br>032 236 3522</p>
        </div>
        <div class="contact-item">
            <h2><i class="fas fa-envelope icon"></i>Email</h2>
            <p>2251120418@ut.edu.vn<br>newera2024@gmail.com</p>
        </div>
    </div>

    <div class="contact-form-container">
        <div class="contact-form">
            <h2>Send Us a Message</h2>
            <form action="#" method="post">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Your Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Your Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>

                <button type="submit">Send Message</button>
            </form>
        </div>
    </div>
</section>
</body>
</html>

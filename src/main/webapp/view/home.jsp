<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Era Hair Salon</title>
    <link rel="icon" href="../images/logo.png">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/popUp.css">
    <link rel="stylesheet" href="css/footer.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    <!-- CSS của AOS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css">
    <!-- Các CSS khác của bạn -->
    <link rel="stylesheet" href="veiw/css/home.css">


</head>
<body>
<!-- Pop-up Login Form -->
<div id="login-popup" class="popup-overlay d-none">
    <div class="popup-content rounded shadow">
        <button class="close-popup">&times;</button> <!-- Nút đóng -->
        <h2 class="text-center">Login</h2>
        <form>
            <input type="text" class="form-control mb-3" placeholder="Username" required>
            <input type="password" class="form-control mb-3" placeholder="Password" required>
            <button type="submit" class="btn btn-dark w-100">Login</button> <!-- Nút đen -->
        </form>
        <p class="text-center mt-3">Don't have an account? <a href="#" id="to-signup">Sign Up</a></p>
    </div>
</div>

<!-- Pop-up Sign Up Form -->
<div id="signup-popup" class="popup-overlay d-none">
    <div class="popup-content rounded shadow">
        <button class="close-popup">&times;</button> <!-- Nút đóng -->
        <h2 class="text-center">Sign Up</h2>
        <form>
            <input type="text" class="form-control mb-3" placeholder="Username" required>
            <input type="email" class="form-control mb-3" placeholder="Email" required>
            <input type="password" class="form-control mb-3" placeholder="Password" required>
            <button type="submit" class="btn btn-dark w-100">Sign Up</button> <!-- Nút đen -->
        </form>
        <p class="text-center mt-3">Already have an account? <a href="#" id="to-login">Login</a></p>
    </div>
</div>

<!-- Header với video background -->

<header>
    <!-- Video Background -->
    <video autoplay muted loop id="bgVideo">
        <source src="../videos/background-video.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>

    <!-- Nội dung hiển thị phía trên video -->
    <div class="content">
        <!-- Logo -->
        <div class="top-bar">
            <div class="logo">
                <img src="../images/logo.png" alt="Booksy Logo">
            </div>
            <div class="login-signup">
                <a href="#" id="open-login">Log In / Sign Up</a>
            </div>
        </div>

        <!-- Phần chính với tiêu đề và thanh tìm kiếm -->
        <div class="header-content">
            <h1><span id="typing-text"></span></h1>
            <p>Discover and book beauty & wellness professionals near you</p>
            <div class="search-bar">
                <input type="text" placeholder="Search services or businesses">
            </div>
        </div>

        <!-- Menu điều hướng -->
        <nav class="nav link">
            <ul id="main-menu">
                <li><a href="../index.jsp?currentPage=aboutUs">About Us</a></li>
                <li><a href="../index.jsp?currentPage=services">Services</a></li>
                <li><a href="../index.jsp?currentPage=stylists">Stylists</a></li>
                <li><a href="../index.jsp?currentPage=bookNow">Book Now</a></li>
                <li><a href="../index.jsp?currentPage=contact">Contact</a></li>
                <li><a href="../index.jsp?currentPage=handbook">Handbook</a></li>
            </ul>
        </nav>
    </div>
</header>

<!-- khung2 -->
<div class="container mt-5">
    <div class="location-container" data-aos="fade-up">
        <div class="location-info">
            <h2>Turn on location services</h2>
            <p>Get recommendations of great businesses! Turn on location services so we can show you nearby businesses.</p>
            <div class="d-flex">
                <button class="btn btn-primary mr-3">Search Near Me</button>
                <button class="btn btn-outline-primary"> Not Now</button>
            </div>
        </div>
        <div class="location-image">
            <img src="../images/anhggmap.jpg" alt="Location Icon">
        </div>
    </div>
</div>

<!-- 2 bõ tiếp theo -->
<div class="container section-container">
    <div class="row equal-height">
        <!-- Cột Bên Trái -->
        <div class="col-md-6 d-flex">
            <div class="box text-center flex-fill">
                <h6>Booksy App • iOS, Android</h6>
                <h2>Find & book an appointment</h2>
                <p>Cut the phone tag. Find your next appointment and book <strong>instantly</strong> anytime, anywhere.</p>

                <!-- Phần ô nhập tùy chỉnh -->
                <div class="input-group input-group-custom mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">🇺🇸 +1</span>
                    </div>
                    <input type="text" class="form-control" placeholder="Your phone number">
                    <div class="input-group-append">
                        <button class="btn download-btn">DOWNLOAD</button>
                    </div>
                </div>

                <img src="../images/anhboxleft.jpg" alt="Phone Image" class="phone-img">
            </div>
        </div>

        <!-- Cột Bên Phải -->
        <div class="col-md-6 d-flex">
            <div class="box-dark text-center flex-fill">
                <h6>BooksyBiz App • iOS, Android</h6>
                <h2>Booksy for your business</h2>
                <p>Get started with Booksy to run your business better. Calendar, Booking, Marketing, and Payments all in one.</p>
                <button class="btn business-btn">Grow My Business</button>
                <img src="../images/anhboxright.jpg" alt="Phone Image" class="phone-img">
            </div>
        </div>
    </div>
</div>

<div class="container">
    <!-- Phần 1 -->
    <div class="row section-container align-items-center">
        <div class="col-md-6 section-text">
            <h2 class="section-title">Appointments done better</h2>
            <p>Looking for your next appointment with a local barber, hair stylist, massage therapist or nail artist? Need appointment booking for a beard trim, an eyebrow wax, or a deep tissue massage?</p>
            <p>Booksy is a free beauty scheduling app and makes appointments easy to find and book within seconds. No more phone tag. Book anytime, from anywhere, 24/7.</p>
            <p><strong>Discover top businesses in your area and book instantly with Booksy.</strong></p>
        </div>
        <div class="col-md-6 text-center">
            <img src="../images/anhphan3.jpg" alt="Illustration 1" class="illustration">
        </div>
    </div>

    <!-- Phần 2 -->
    <div class="row section-container align-items-center">
        <!-- Hình ảnh bên trái -->
        <div class="col-md-6 text-center">
            <img src="../images/anhphan3-2.jpg" alt="Illustration 2" class="illustration">
        </div>

        <!-- Văn bản bên phải -->
        <div class="col-md-6 section-text">
            <h2 class="section-title">Something come up? We’ve got you.</h2>
            <p>Download Booksy, a free online appointment booking app, and manage your appointments from anywhere. Reschedule or cancel without picking up the phone.</p>
            <p>And because we know life gets busy, we’ll send you reminders. You’ll never forget or miss out on another appointment.</p>
        </div>
    </div>

    <!-- Phần 3 -->
    <div class="row section-container align-items-center">
        <div class="col-md-6 section-text">
            <h2 class="section-title">Book with the best, near you</h2>
            <p>Take a scroll around the block to see top health and beauty businesses on Booksy’s marketplace.</p>
            <p>Check out their vibe from their business profile and hear what other people are saying with verified reviews. You can even look through their portfolio of work.</p>
            <p>Save time and leave the stress to someone else. With Booksy, setting up your next beauty appointment is free and easy.</p>
        </div>
        <div class="col-md-6 text-center">
            <img src="../images/anhphan3-3.jpg" alt="Illustration 3" class="illustration">
        </div>
    </div>

<%--   SLIDE SHOW STYLIST--%>
    <!-- First Carousel for Stylist -->
    <div id="stylist-carousel" class="carousel slide" data-ride="carousel">
        <h2>STYLIST</h2>
        <p class="chu">Discover the art of elegance with our exclusive styling services. Transform your look with our experts.</p>
        <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#stylist-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#stylist-carousel" data-slide-to="1"></li>
            <li data-target="#stylist-carousel" data-slide-to="2"></li>
        </ul>

        <!-- The slideshow -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../images/homeimg6.png" alt="Image 1">
                <div class="carousel-caption">
                    <h3>Elegance in Every Detail</h3>
                    <p>Our stylists bring sophistication to every look. Redefine your elegance today.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../images/homeimg6.png" alt="Image 2">
                <div class="carousel-caption">
                    <h3>Unmatched Expertise</h3>
                    <p>Entrust your style to our expert hands for a truly unique transformation.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../images/homeimg6.png" alt="Image 3">
                <div class="carousel-caption">
                    <h3>Timeless Beauty</h3>
                    <p>Experience styling that brings out your natural elegance and confidence.</p>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#stylist-carousel" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#stylist-carousel" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>

    <!-- Second Carousel for Service -->
    <div id="service-carousel" class="carousel slide" data-ride="carousel">
        <h2>SERVICE</h2>
        <p class="chu">Experience unmatched quality and care with our professional services, tailored just for you.</p>


        <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#service-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#service-carousel" data-slide-to="1"></li>
            <li data-target="#service-carousel" data-slide-to="2"></li>
        </ul>

        <!-- The slideshow -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="../images/homeimg5.png" alt="Service Image 1">
                <div class="carousel-caption">
                    <h3>Personalized Care</h3>
                    <p>Enjoy a service experience designed uniquely for your needs and preferences.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../images/homeimg5.png" alt="Service Image 2">
                <div class="carousel-caption">
                    <h3>Quality and Precision</h3>
                    <p>Our team is dedicated to delivering precision and quality in every service.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="../images/homeimg5.png" alt="Service Image 3">
                <div class="carousel-caption">
                    <h3>Excellence in Every Detail</h3>
                    <p>Experience our commitment to excellence and attention to detail with every visit.</p>
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#service-carousel" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#service-carousel" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
</div>






<%--footer--%>
<jsp:include page="footer.jsp" />
<%--footer--%>

</body>
</html>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- JavaScript của AOS -->
<script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>
<script>
    AOS.init({
        duration: 1200, // Thời gian hiệu ứng
        easing: 'ease-in-out', // Đường cong chuyển động
        once: true // Chỉ kích hoạt hiệu ứng một lần khi cuộn
    });
</script>

<script>
    // Danh sách các cụm từ cần hiển thị
    const textList = [
        "Be free",
        "Be colorful",
        "Be confident",
        "Be brave",
        "Be bold",
        "Be yourself"
    ];

    let currentTextIndex = 0; // Vị trí của chuỗi trong danh sách
    let currentCharIndex = 0; // Vị trí của ký tự trong chuỗi
    const typingTextElement = document.getElementById("typing-text");

    function typeText() {
        // Lấy chuỗi hiện tại từ danh sách
        const currentText = textList[currentTextIndex];

        // Hiển thị dần dần từng ký tự của chuỗi
        typingTextElement.textContent = currentText.slice(0, currentCharIndex + 1);

        // Tăng chỉ số ký tự lên
        currentCharIndex++;

        // Nếu đã gõ hết chuỗi hiện tại
        if (currentCharIndex === currentText.length) {
            // Đợi một lúc trước khi chuyển sang từ tiếp theo
            setTimeout(() => {
                deleteText();
            }, 2000); // Đợi 2 giây trước khi xóa
        } else {
            // Tiếp tục gõ
            setTimeout(typeText, 50); // Gõ từng ký tự với khoảng cách 100ms
        }
    }

    function deleteText() {
        // Xóa toàn bộ chuỗi hiện tại
        typingTextElement.textContent = "";

        // Chuyển sang chuỗi tiếp theo trong danh sách
        currentTextIndex = (currentTextIndex + 1) % textList.length;
        currentCharIndex = 0;

        typeText();
    }

    // Bắt đầu khi trang tải xong
    window.onload = function() {
        typeText();
    };
</script>


<script src="js/popup-manage.js"></script>
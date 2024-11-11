<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>New Era Hair Salon</title>
  <link rel="stylesheet" href="view/css/header.css">


</head>
<body>
  <header>
    <div class="header-container">
      <div class="logo">
        <a href="index.jsp?currentPage=home"><img src="images/logo.png" alt="Logo"></a>
      </div>
      <div class="search-container">
        <input type="text" placeholder="Search services or businesses">
        <input type="text" placeholder="Where?">
        <input type="text" placeholder="When?">
      </div>
      <div class="user-section">
        <a href="#" id="open-login">Log In / Sign Up</a>
      </div>
    </div>
    <nav class="nav-links">
      <a href="index.jsp?currentPage=aboutUs">About Us</a>
      <a href="index.jsp?currentPage=services">Services</a>
      <a href="index.jsp?currentPage=stylists">Stylists</a>
      <a href="index.jsp?currentPage=bookNow">Book Now</a>
      <a href="index.jsp?currentPage=contact">Contact</a>
      <a href="index.jsp?currentPage=handbook">Handbook</a>
    </nav>
  </header>
<%--<a href="hello-servlet">Hello Servlet</a>--%>

</body>
</html>

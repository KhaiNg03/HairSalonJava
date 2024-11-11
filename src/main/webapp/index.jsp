<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Era</title>
    <link rel="icon" href="images/logo.png">
    <link rel="stylesheet" href="view/css/popUp.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Cloudfare CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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

    <%--header--%>
    <jsp:include page="view/header.jsp" />
    <%--header--%>

    <%--    <%@ page import="javax.servlet.http.HttpServletRequest" %>--%>

    <%
        String currentPage = request.getParameter("currentPage") != null
                ? request.getParameter("currentPage").trim()
                : "home";

        switch (currentPage) {
            case "home":
                response.sendRedirect("view/home.jsp");
                break;
            case "aboutUs":
    %><jsp:include page="view/aboutUs.jsp" /> <%
            break;
        case "services":
    %><jsp:include page="view/services.jsp" /> <%
            break;
        case "stylists":
    %><jsp:include page="view/stylists.jsp" /> <%
            break;
        case "bookNow":
    %><jsp:include page="view/bookNow.jsp" /> <%
            break;
        case "contact":
    %><jsp:include page="view/contact.jsp" /> <%
            break;
        case "handbook":
    %><jsp:include page="view/handbook.jsp" /> <%
            break;
        case "viewMoreLiz":
    %><jsp:include page="view/viewMoreLiz.jsp" /> <%
        case "handbook_home":
    %><jsp:include page="view/home_handbook.jsp" /> <%
            break;
        default:
    %><jsp:include page="view/aboutUs.jsp" /> <%
                break;
        }
    %>


    <%--footer--%>
    <jsp:include page="view/footer.jsp" />
    <%--footer--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>
</body>
</html>

<script src="view/js/popup-manage.js"></script>
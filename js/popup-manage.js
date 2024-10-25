    // Pop-up elements
    const loginPopup = document.getElementById('login-popup');
    const signupPopup = document.getElementById('signup-popup');
    const loginLink = document.querySelector('.user-section a');
    const closePopupButtons = document.querySelectorAll('.close-popup');
    const toSignupLink = document.getElementById('to-signup');
    const toLoginLink = document.getElementById('to-login');

    // Mở pop-up khi nhấn vào "Log In / Sign Up"
    loginLink.addEventListener('click', function(event) {
        event.preventDefault();
        loginPopup.style.display = 'flex';
    });

    // Đóng pop-up khi nhấn vào dấu "x"
    closePopupButtons.forEach(button => {
        button.addEventListener('click', function() {
            loginPopup.style.display = 'none';
            signupPopup.style.display = 'none';
        });
    });

    // Chuyển từ Login sang Sign Up
    toSignupLink.addEventListener('click', function(event) {
        event.preventDefault();
        loginPopup.style.display = 'none';
        signupPopup.style.display = 'flex';
    });

    // Chuyển từ Sign Up sang Login
    toLoginLink.addEventListener('click', function(event) {
        event.preventDefault();
        signupPopup.style.display = 'none';
        loginPopup.style.display = 'flex';
    });

    // Đóng pop-up khi nhấn ra ngoài pop-up
    window.addEventListener('click', function(event) {
        if (event.target === loginPopup || event.target === signupPopup) {
            loginPopup.style.display = 'none';
            signupPopup.style.display = 'none';
        }
    });
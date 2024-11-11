document.addEventListener('DOMContentLoaded', function () {
    const loginPopup = document.getElementById('login-popup');
    const signupPopup = document.getElementById('signup-popup');
    const openLoginButton = document.getElementById('open-login');
    const closeButtons = document.querySelectorAll('.close-popup');

    // Mở Login Popup
    openLoginButton.onclick = (event) => {
        event.preventDefault();
        loginPopup.classList.remove('d-none');
        signupPopup.classList.add('d-none');
    };

    // Chuyển sang Sign Up Popup
    document.getElementById('to-signup').onclick = (event) => {
        event.preventDefault();
        loginPopup.classList.add('d-none');
        signupPopup.classList.remove('d-none');
    };

    // Chuyển sang Login Popup
    document.getElementById('to-login').onclick = (event) => {
        event.preventDefault();
        signupPopup.classList.add('d-none');
        loginPopup.classList.remove('d-none');
    };

    // Đóng cả Login và Signup Popups
    closeButtons.forEach(button => {
        button.onclick = function () {
            loginPopup.classList.add('d-none');
            signupPopup.classList.add('d-none');
        };
    });

    // Đóng popup khi click ra ngoài
    window.onclick = function (event) {
        if (event.target == loginPopup || event.target == signupPopup) {
            loginPopup.classList.add('d-none');
            signupPopup.classList.add('d-none');
        }
    };
});

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="view/css/booknow.css">
</head>
<body>
<section class="bookNow-section">
    <div class="booking-container">
        <form id="booking-form" onsubmit="return validateForm()">
            <!-- Customer Information -->
            <div class="box customer-info">
                <h2>Customer Information</h2>
                <label for="name">Customer Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" required>

                <label for="date">Booking Date:</label>
                <input type="date" id="date" name="date" required>

                <label for="time">Time:</label>
                <input type="time" id="time" name="time" required>
            </div>

            <!-- Service Information -->
            <div class="box service-info">
                <h2>Service Information</h2>
                <label style="font-size:18px;">Select Services:</label>
                <div class="booking-input service-checkbox">
                    <input type="checkbox" id="service-haircut" name="service" value="haircut" onchange="toggleStaffSelection()">
                    <label  for="service-haircut" >Hair Cut</label>

                    <input type="checkbox" id="service-makeup" name="service" value="makeup" onchange="toggleStaffSelection()">
                    <label for="service-makeup">Makeup</label>

                    <input type="checkbox" id="service-massage" name="service" value="massage" onchange="toggleStaffSelection()">
                    <label for="service-massage">Massage</label>

                    <input type="checkbox" id="service-headwashing" name="service" value="headwashing" onchange="toggleStaffSelection()">
                    <label for="service-headwashing">Hair Washing</label>

                    <input type="checkbox" id="service-hairdying" name="service" value="hairdying" onchange="toggleStaffSelection()">
                    <label for="service-hairdying">Hair Dying</label>

                    <input type="checkbox" id="service-haircurling" name="service" value="haircurling" onchange="toggleStaffSelection()">
                    <label for="service-haircurling">Hair Curling</label>
                </div>
                <div id="staff-selection" style="display: none;">
                    <label for="staff" style="font-size:18px;">Select Staff:</label>
                    <select id="staff" name="staff" required onchange="displayStaffProfile()">
                        <option value="">Select Staff</option>
                        <option value="1">Luu Truong Van</option>
                        <option value="2">Le Nguyen Minh Phuc</option>
                        <option value="3">Tran Thanh Dong</option>
                        <option value="4">Do Tan Phat</option>
                        <option value="5">Nguyen Tri Khai</option>
                    </select>

                    <div id="staff-profile" class="staff-profile">
                        <img id="staff-image" src="" alt="Profile Image">
                        <div id="staff-details"></div>
                    </div>
                </div>


            </div>
            <button type="submit">Book Appointment</button>
        </form>
    </div>
</section>

<script>
    const staffData = {
        1: { name: "Luu Truong Van", age: 30, rating: 4.5, image: "images/staff1.jpg" },
        2: { name: "Le Nguyen Minh Phuc", age: 28, rating: 4.8, image: "images/staff4.jpg" },
        3: { name: "Tran Thanh Dong", age: 35, rating: 4.2, image: "images/staff2.jpg" },
        4: { name: "Do Tan Phat", age: 31, rating: 4.7, image: "images/staff3.jpg" },
        5: { name: "Nguyen Tri Khai", age: 29, rating: 4.6, image: "images/staff5.jpg" }
    };

    function validateForm() {
        const checkboxes = document.querySelectorAll('input[name="service"]:checked');
        if (checkboxes.length === 0) {
            alert("Please select at least one service before booking.");
            return false; // Ngăn chặn việc gửi form
        }
        return true; // Cho phép gửi form
    }

    function toggleStaffSelection() {
        const checkboxes = document.querySelectorAll('input[name="service"]:checked');
        const staffSelection = document.getElementById('staff-selection');

        // Hiện phần chọn nhân viên nếu có ít nhất một dịch vụ được chọn
        if (checkboxes.length > 0) {
            staffSelection.style.display = 'block';
        } else {
            staffSelection.style.display = 'none';
            hideStaffProfile(); // Ẩn profile nhân viên khi không có dịch vụ nào được chọn
        }
    }

    function displayStaffProfile() {
        const staffSelect = document.getElementById('staff');
        const selectedStaffId = staffSelect.value;
        const profileDiv = document.getElementById('staff-profile');
        const staffImage = document.getElementById('staff-image');
        const staffDetails = document.getElementById('staff-details');

        // Nếu không có nhân viên nào được chọn, ẩn profile
        if (selectedStaffId === "") {
            hideStaffProfile();
            return; // Thoát hàm
        }

        // Hiện profile nhân viên được chọn
        const staffInfo = staffData[selectedStaffId];
        staffImage.src = staffInfo.image;
        staffDetails.innerHTML = `
            <strong>Name:</strong> ${staffInfo.name}<br>
            <strong>Age:</strong> ${staffInfo.age}<br>
            <strong>Rating:</strong> ${staffInfo.rating} ★
        `;
        profileDiv.style.display = 'flex'; // Hiện profile
    }

    function hideStaffProfile() {
        document.getElementById('staff-profile').style.display = 'none';
    }

    // Thêm sự kiện cho các ô nhập liệu customer-info
    document.querySelectorAll('.customer-info input').forEach(input => {
        input.addEventListener('input', function() {
            const customerInfoBox = document.querySelector('.customer-info');
            if (this.value) {
                customerInfoBox.classList.add('active');
            } else {
                const allInputsFilled = Array.from(document.querySelectorAll('.customer-info input')).some(input => input.value);
                if (!allInputsFilled) {
                    customerInfoBox.classList.remove('active');
                }
            }
        });
    });

    // Thêm sự kiện cho các ô dịch vụ
    document.querySelectorAll('.service-info input').forEach(input => {
        input.addEventListener('change', function() {
            const serviceInfoBox = document.querySelector('.service-info');
            const checkboxes = document.querySelectorAll('.service-info input[name="service"]:checked');
            if (checkboxes.length > 0) {
                serviceInfoBox.classList.add('active');
            } else {
                serviceInfoBox.classList.remove('active');
            }
        });
    });
</script>
</body>
</html>
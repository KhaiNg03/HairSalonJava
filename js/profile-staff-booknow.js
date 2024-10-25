// Lấy phần tử select staff và container profile staff
const staffSelect = document.getElementById('staff');
const staffProfileContainer = document.getElementById('staff-profile');

// Thông tin profile của các nhân viên
const staffProfiles = {
    staff1: {
        image: '../images/staff1.jpg',
        name: 'Lưu Trường Văn',
        position: 'Position: Stylist',
        experience: 'Kinh nghiệm: 5 năm',
        rating: 4 // Đánh giá sao
    },
    staff2: {
        image: '../images/staff2.jpg',
        name: 'Trần Thành Đông',
        position: 'Position: Stylist',
        experience: 'Kinh nghiệm: 3 năm',
        rating: 5
    },
    staff3: {
        image: '../images/staff3.jpg',
        name: 'Đỗ Tấn Phát',
        position: 'Position: Stylist',
        experience: 'Kinh nghiệm: 4 năm',
        rating: 4
    },
    staff4: {
        image: '../images/staff4.jpg',
        name: 'Lê Nguyễn Minh Phúc',
        position: 'Position: Stylist',
        experience: 'Kinh nghiệm: 6 năm',
        rating: 4
    }
};

// Hàm tạo phần đánh giá sao
function createStarRating(rating) {
    let stars = '';
    for (let i = 1; i <= 5; i++) {
        if (i <= rating) {
            stars += '<span class="star filled">★</span>'; // Sao đầy
        } else {
            stars += '<span class="star">☆</span>'; // Sao trống
        }
    }
    return stars;
}

// Hàm cập nhật thông tin profile khi chọn nhân viên
function updateStaffProfile(staffId) {
    const profile = staffProfiles[staffId];
    if (profile) {
        staffProfileContainer.style.display = 'flex'; // Hiển thị phần profile khi đã chọn nhân viên
        staffProfileContainer.innerHTML = `
            <div class="profile-image">
                <img src="${profile.image}" alt="${profile.name}">
            </div>
            <div class="profile-details">
                <h3>${profile.name}</h3>
                <p>${profile.position}</p>
                <p>${profile.experience}</p>
                <div class="star-rating">${createStarRating(profile.rating)}</div>
            </div>
        `;
    } else {
        staffProfileContainer.style.display = 'none'; // Ẩn phần profile nếu không có nhân viên được chọn
    }
}

// Lắng nghe sự kiện thay đổi của select staff
staffSelect.addEventListener('change', (e) => {
    updateStaffProfile(e.target.value);
});

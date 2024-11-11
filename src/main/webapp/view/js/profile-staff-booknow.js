// Lấy phần tử select staff và container profile staff
const staffSelect = document.getElementById('staff');
const staffProfileContainer = document.getElementById('staff-profile');

// Danh sách nhân viên chia theo dịch vụ
const staffByService = {
    haircut: {
        staff1: {
            image: 'images/staff1.jpg',
            name: 'Lưu Trường Văn',
            position: 'Position: Stylist',
            experience: 'Kinh nghiệm: 5 năm',
            rating: 4
        },
        staff2: {
            image: 'images/staff2.jpg',
            name: 'Trần Thành Đông',
            position: 'Position: Stylist',
            experience: 'Kinh nghiệm: 3 năm',
            rating: 5
        },
        staff3: {
            image: 'images/staff3.jpg',
            name: 'Đỗ Tấn Phát',
            position: 'Position: Stylist',
            experience: 'Kinh nghiệm: 4 năm',
            rating: 4
        },
        staff4: {
            image: 'images/staff4.jpg',
            name: 'Lê Nguyễn Minh Phúc',
            position: 'Position: Stylist',
            experience: 'Kinh nghiệm: 6 năm',
            rating: 4
        }
    },
    makeup: {
        staff1: {
            image: 'images/staff5.jpg',
            name: 'Sarah Lee',
            position: 'Position: Stylist',
            experience: 'Kinh nghiệm: 7 năm',
            rating: 5
        },
        staff2: {
            image: 'images/staff6.jpg',
            name: 'Chris Green',
            position: 'Position: Stylist',
            experience: 'Kinh nghiệm: 9 năm',
            rating: 4
        },
        staff3: {
            image: 'images/staff7.jpg',
            name: 'Anna Black',
            position: 'Position: Stylist',
            experience: 'Kinh nghiệm: 8 năm',
            rating: 3
        },
        staff4: {
            image: 'images/staff8.jpg',
            name: 'Tom Blue',
            position: 'Position: Stylist',
            experience: 'Kinh nghiệm: 10 năm',
            rating: 4
        }
    },
    massage: {
        staff1: {
            image: 'images/staff9.jpg',
            name: 'Nguyễn Văn A',
            position: 'Position: Therapist',
            experience: 'Kinh nghiệm: 5 năm',
            rating: 4
        },
        staff2: {
            image: 'images/staff10.jpg',
            name: 'Trần Thị B',
            position: 'Position: Therapist',
            experience: 'Kinh nghiệm: 6 năm',
            rating: 5
        },
        staff3: {
            image: 'images/staff11.jpg',
            name: 'Lê Văn C',
            position: 'Position: Therapist',
            experience: 'Kinh nghiệm: 7 năm',
            rating: 3
        },
        staff4: {
            image: 'images/staff12.jpg',
            name: 'Phạm Thị D',
            position: 'Position: Therapist',
            experience: 'Kinh nghiệm: 9 năm',
            rating: 4
        }
    },
    headwashing: {
        staff1: {
            image: 'images/staff13.jpg',
            name: 'Nguyễn Văn E',
            position: 'Position: Washer',
            experience: 'Kinh nghiệm: 4 năm',
            rating: 4
        },
        staff2: {
            image: 'images/staff14.jpg',
            name: 'Lê Thị F',
            position: 'Position: Washer',
            experience: 'Kinh nghiệm: 5 năm',
            rating: 5
        },
        staff3: {
            image: 'images/staff15.jpg',
            name: 'Trần Văn G',
            position: 'Position: Washer',
            experience: 'Kinh nghiệm: 6 năm',
            rating: 3
        },
        staff4: {
            image: 'images/staff16.jpg',
            name: 'Phạm Thị H',
            position: 'Position: Washer',
            experience: 'Kinh nghiệm: 3 năm',
            rating: 4
        }
    },
    hairdying: {
        staff1: {
            image: 'images/staff17.jpg',
            name: 'Nguyễn Văn I',
            position: 'Position: Dyer',
            experience: 'Kinh nghiệm: 5 năm',
            rating: 4
        },
        staff2: {
            image: 'images/staff18.jpg',
            name: 'Lê Thị J',
            position: 'Position: Dyer',
            experience: 'Kinh nghiệm: 8 năm',
            rating: 5
        },
        staff3: {
            image: 'images/staff19.jpg',
            name: 'Trần Văn K',
            position: 'Position: Dyer',
            experience: 'Kinh nghiệm: 6 năm',
            rating: 3
        },
        staff4: {
            image: 'images/staff20.jpg',
            name: 'Phạm Thị L',
            position: 'Position: Dyer',
            experience: 'Kinh nghiệm: 4 năm',
            rating: 4
        }
    },
    haircurling: {
        staff1: {
            image: 'images/staff21.jpg',
            name: 'Nguyễn Văn M',
            position: 'Position: Curler',
            experience: 'Kinh nghiệm: 4 năm',
            rating: 4
        },
        staff2: {
            image: 'images/staff22.jpg',
            name: 'Lê Thị N',
            position: 'Position: Curler',
            experience: 'Kinh nghiệm: 5 năm',
            rating: 5
        },
        staff3: {
            image: 'images/staff23.jpg',
            name: 'Trần Văn O',
            position: 'Position: Curler',
            experience: 'Kinh nghiệm: 6 năm',
            rating: 3
        },
        staff4: {
            image: 'images/staff24.jpg',
            name: 'Phạm Thị P',
            position: 'Position: Curler',
            experience: 'Kinh nghiệm: 7 năm',
            rating: 4
        }
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

// Hàm cập nhật danh sách nhân viên theo dịch vụ
function updateStaffList() {
    const service = document.getElementById('service').value;
    const staffSelect = document.getElementById('staff');
    
    // Xóa nhân viên cũ
    staffSelect.innerHTML = '<option value="">Select Staff</option>';
    
    // Thêm nhân viên mới theo dịch vụ
    if (staffByService[service]) {
        for (const staffId in staffByService[service]) {
            const staff = staffByService[service][staffId];
            const option = document.createElement('option');
            option.value = staffId;
            option.textContent = staff.name;
            staffSelect.appendChild(option);
        }
    }
    
    // Ẩn profile khi chưa chọn nhân viên
    staffProfileContainer.style.display = 'none';
}

// Hàm cập nhật thông tin profile khi chọn nhân viên
function updateStaffProfile(staffId) {
    const service = document.getElementById('service').value;
    const profile = staffByService[service][staffId];
    
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

// Lắng nghe sự kiện thay đổi của select dịch vụ
document.getElementById('service').addEventListener('change', updateStaffList);

// Lắng nghe sự kiện thay đổi của select staff
staffSelect.addEventListener('change', (e) => {
    updateStaffProfile(e.target.value);
});


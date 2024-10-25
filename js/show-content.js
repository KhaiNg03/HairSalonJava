function showContent(id) {
    // Ẩn tất cả các phần dịch vụ trước
    const allContent = document.querySelectorAll('.service-content');
    allContent.forEach(content => {
        content.style.display = 'none';
        // Xóa class "show" để đưa các box về vị trí ban đầu
        const staffBoxes = content.querySelectorAll('.staff-box');
        staffBoxes.forEach(box => {
            box.classList.remove('show');
            box.style.transform = 'translateY(-50px)'; // Đưa box lên 50px
            box.style.opacity = '0'; // Ẩn box
        });
    });

    // Hiển thị phần dịch vụ được chọn
    const selectedContent = document.getElementById(id);
    if (selectedContent) {
        selectedContent.style.display = 'block';

        // Đợi một chút rồi thêm class "show" để kích hoạt hiệu ứng trượt
        const staffBoxes = selectedContent.querySelectorAll('.staff-box');
        staffBoxes.forEach((box, index) => {
            setTimeout(() => {
                box.classList.add('show');
                box.style.transform = 'translateY(0)'; // Đưa box về vị trí ban đầu
                box.style.opacity = '1'; // Hiển thị box
            }, index * 200); // Hiệu ứng trễ giữa các box
        });
    }
  

    
}
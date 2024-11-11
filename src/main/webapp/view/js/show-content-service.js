window.onload = function() {
    var serviceInfos = document.querySelectorAll('.service-info');
    serviceInfos.forEach(function(info) {
        info.style.display = 'none';
    });
}

function showServiceInfo(service) {
    // Ẩn toàn bộ nội dung ban đầu
    document.getElementById('initial-content').style.display = 'none';

    // Ẩn toàn bộ các service-info và loại bỏ class "show"
    var serviceInfos = document.querySelectorAll('.service-info');
    serviceInfos.forEach(function(info) {
        info.style.display = 'none';
        info.classList.remove('show');
    });

    // Hiển thị service-info được chọn và thêm class "show" để tạo hiệu ứng
    var selectedServiceInfo = document.getElementById(service + '-info');
    if (selectedServiceInfo) {
        selectedServiceInfo.style.display = 'block';
        setTimeout(function() {
            selectedServiceInfo.classList.add('show');
        }, 10); // Đảm bảo hiệu ứng hoạt động khi display: block
    }
}
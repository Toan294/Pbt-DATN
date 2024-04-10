import React from 'react'
import '../static/css/style.css'
const Footer = () => {
  return (
    <div>
        <footer>
          <div className="container-fluid padding bg-light text-dark">
            <div className="row text-center">
              <div className="col-md-4">           
                <hr className="light" />
                <h5>Liên hệ và hỗ trợ</h5>
                <p>Tư vấn mua hàng </p>
                <p>- Hotline: 0337633628</p>
                <p>Hỗ trợ kỹ thuật</p>
                <p>- Hotline: 0337633628</p>
              </div>
              <div className="col-md-4">
                <hr className="light" />
                <h5>Giờ làm việc</h5>
                <hr className="light" />
                <p>Thứ hai- Chủ nhật: 8:00 - 22:00</p>
              </div>
              <div className="col-md-4">
                <hr className="light" />
                <h5>Hệ thống cửa hàng</h5>
                <hr className="light" />
                <p>Chính sách đổi trả</p>
                <p>- Bảo hành lỗi 1 đổi 1 do nhà sản xuất</p>
                <p>Chính sách trả góp</p>
                <p>- Trả góp 0%</p>
              </div>
              <div className="col-12">
                <hr className="light-100" />T
                <h5>© 2024 Máy tính & Phụ kiện </h5>
              </div>
            </div>
          </div>
        </footer>
      </div>
  )
}

export default Footer
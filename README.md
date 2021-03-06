# BT-TMDT-1 - *Mini Blog*

**Mini Blog** là một bài tập môn TMDT. Ứng dụng cho phép người dùng gửi tin nhắn (email) cho người dùng khác.

Thành viên:
* [ ] **1412579** Vũ Minh Trí (1412579)
* [ ] **1412689** Hoàng Thị Bích Vân (1412689)

URL: **https://lab01-1412579-1412689.herokuapp.com/**

Account test: tangliang/123456

**Database được upload tại folder Database**

**Đôi khi đăng nhập hoặc comment sẽ bị lỗi, vì sử dụng gmail nên lâu lâu Google nó sẽ chặn và bắt nhập captcha.**

## Yêu cầu

Sinh viên check vào các mục bên dưới và ghi mã sinh viên đã làm vào chức năng theo mẫu. Mục nào ko có MSSV là tính điểm theo nhóm. Cần sắp xếp các chức năng bên dưới theo thứ tự MSSV đã thực hiện.

Yêu cầu **GIT**:
* [x] Sử dụng GIT theo [Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows#feature-branch-workflow).

Yêu cầu **bắt buộc**
* [x] Thiết kế trang web theo responsive với bootstrap với header (navigation bar, logo), left menu, footer và content.
* [x] Navigation bar sẽ ẩn đi với kích thước màn hình nhỏ hơn 992px và có nút nhấn để hiển thị navigation bar. 
* [x] Left menu sẽ ẩn đi khi kích thước màn hình nhỏ hơn 768px và có nút nhấn để hiển thị lại left menu. (**1412579**)
* [x] Trang web được thiết kế sẽ bao gồm các trang: home, albums, about, blog.
* [x] Khi nhấn vào trang albums sẽ thấy danh sách các album đã được lưu trữ trong hệ thống. Mỗi album bao gồm: ảnh cover, tên người tạo, tổng số view của các tấm ảnh trong album. (**1412689**)
* [x] Khi nhấn vào từng album sẽ sẽ chuyển sang danh sách các tấm ảnh trong album. Mỗi tấm ảnh hiển thị các thông tin: người đăng, số lượng view và tấm ảnh dưới dạng thumbnail.
* [x] Vào trang about sẽ thấy thông tin nhóm: tên nhóm, danh sách thành viên (mã sinh viên, họ tên, ảnh đại diện) và bản đồ google map hiển thị địa chỉ liên lạc của nhóm. (**1412689**)
* [x] Vào trang blog sẽ thấy danh sách các bài viết, mỗi bài viết bao gồm: nội dung rút gọn, ảnh đại diện, người đăng và số view. (**1412579**)
* [x] Nhấn vào mỗi bài viết sẽ thấy chi tiết bài viết cùng đầy đủ nội dung của bài viết. (**1412579**)
* [x] Cho phép người dùng biết họ đang ở trang nào (sử dụng breadcrumb, highlight navigation bar,...). (**141579**)
* [x] Cho phép người dùng đăng nhập, đăng xuất, đăng ký thông tin tài khoản. (**1412579**)
* [x] Cho phép người dùng đã đăng nhập đăng thêm bài viết mới. (**1412579**)
* [x] Sử dụng bcrypt hoặc devise để quản lý thông tin người dùng và băm mật khẩu. (**1412579**)

Yêu cầu **không bắt buộc**:
* [x] Có thể xem danh sách các comment của từng bài viết.  (**1412579**)
* [x] Cho phép người dùng đã đăng nhập comment cho bài viết. (**1412579**)
* [ ] Quản lý thêm thông tin tag cho mỗi bài viết. Mỗi bài viết có thể bao gồm nhiều tag và mỗi tag có thể có nhiều bài viết. (**MSSV**)
* [ ] Cho phép người dùng đăng nhập bằng tài khoản facebook và lấy ảnh đại diện, email từ facebook. (**MSSV**)
* [ ] Cho phép người dùng tạo album và đăng ảnh mới vào album. (**MSSV**)
* [ ] Chỉ cho phép người tạo album được phép thêm, xóa ảnh mình đã đăng vào album. (**MSSV**)
* [x] Chỉ cho phép người tạo bài viết được phép chỉnh sửa bài viết mình đã đăng. (**1412579**)
* [x] Cho phép người dùng layout bài viết bằng markdown. (**1412579**)
* [x] Gửi mail cho người dùng khi người dùng đã đăng nhập thành công. (**1412579**)
* [x] Gửi mail cho tác giả khi có người dùng comment vào bài viết của họ. (**1412579**)

Liệt kê các **yêu cầu nâng cao** đã thực hiện:
* [x] Có thể xem danh sách các comment của từng bài viết.  (**1412579**)
* [x] Cho phép người dùng đã đăng nhập comment cho bài viết. (**1412579**)
* [x] Chỉ cho phép người tạo bài viết được phép chỉnh sửa bài viết mình đã đăng. (**1412579**)
* [x] Cho phép người dùng layout bài viết bằng markdown. (**1412579**)
* [x] Gửi mail cho người dùng khi người dùng đã đăng nhập thành công. (**1412579**)
* [x] Gửi mail cho tác giả khi có người dùng comment vào bài viết của họ. (**1412579**)
* [x] Tăng view mỗi lần reload tin. (**1412579**)
## Demo

Link Youtube Demo ứng dụng:

[![Demo Lab01 - 1412579 - 1412689](https://img.youtube.com/vi/8D6zXtGZ3Go/0.jpg)](https://www.youtube.com/watch?v=8D6zXtGZ3Go)

## License

    Copyright [TMDT] [1412579-1412689]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

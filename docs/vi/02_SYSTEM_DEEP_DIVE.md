# 🧠 Tổng quan hệ thống

Tài liệu này giải thích hai thành phần cốt lõi của Vibe-Core và lý do chúng tồn tại.

---

## Thành phần 1: `global-hub/` — Bộ nhớ xuyên dự án

**Là gì:** Một thư mục duy nhất nằm ngoài mọi dự án cụ thể, được trỏ đến bởi biến môi trường `$VIBE_HUB`.

**Lưu trữ gì:**
- `GLOBAL_PREFERENCES.md` — Sở thích code cá nhân, quy ước thiết kế và quy tắc áp dụng xuyên suốt tất cả dự án. AI đọc file này để hiểu bạn muốn làm việc như thế nào.
- `SESSION_LOGS/` — File nhật ký hàng ngày. Cuối mỗi phiên làm việc, bạn nhờ AI ghi tóm tắt vào đây. Những file này trở thành ngữ cảnh cho các phiên tương lai.

**Quyết định thiết kế quan trọng:** Chỉ có duy nhất MỘT `global-hub`. Nó không bao giờ được copy vào các dự án. Tất cả dự án đều tham chiếu đến nó bằng đường dẫn tuyệt đối thông qua `$VIBE_HUB`. Đây là cách kiến thức tích lũy theo thời gian qua nhiều dự án.

---

## Thành phần 2: `project-scaffold/` — Trạng thái cục bộ mỗi dự án

**Là gì:** Một template được copy vào mỗi dự án mới khi bạn chạy script khởi tạo.

**Chứa gì:**
- `.planning/STATE.md` — Bảng công việc chung. Đây là nơi các Agent ghi lại những gì đã làm và những gì cần làm tiếp theo. Đây là quy ước bắt buộc duy nhất — toàn bộ hệ thống phụ thuộc vào việc file này được duy trì đúng cách.
- `CLAUDE_GUIDE.md` — Hướng dẫn cho AI khi khởi động: đọc file này, liên kết với `$VIBE_HUB`, và hiểu cấu trúc bộ nhớ dự án.

---

## Khi nào hệ thống hoạt động tốt (và khi nào không)

**Hoạt động tốt khi:**
- Bạn dùng 1–2 công cụ AI và chuyển đổi giữa chúng thường xuyên
- Bạn muốn tiếp tục dự án sau nhiều ngày hoặc nhiều tuần mà không cần giải thích lại mọi thứ
- Bạn muốn sở thích AI của mình được kế thừa từ dự án này sang dự án khác

**Gặp khó khăn khi:**
- Thành viên team không cập nhật `STATE.md` nhất quán (hệ thống chỉ tốt bằng chất lượng log)
- Dự án rất lớn với nhiều luồng công việc song song (trạng thái dạng file phẳng sẽ lộn xộn)
- Bạn cần AI chủ động tìm kiếm ngữ cảnh cũ (Vibe-Core không có retrieval — bạn load ngữ cảnh thủ công)

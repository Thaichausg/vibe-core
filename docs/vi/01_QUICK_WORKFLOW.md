# 🔄 Workflow hàng ngày: Làm việc với AI Agent

> Tài liệu tham khảo khi phối hợp nhiều công cụ AI trong cùng một dự án.

---

## Ý tưởng cốt lõi

Mọi Agent đọc `STATE.md` trước khi bắt đầu làm việc. Mọi Agent cập nhật nó trước khi dừng. Đó là toàn bộ hệ thống.

---

## Workflow mỗi ngày

### Bắt đầu phiên làm việc
Nói với AI của bạn:
> *"Đọc `.planning/STATE.md` và tiếp tục từ chỗ chúng ta dừng lại."*

### Trong lúc làm việc (với 2 agent)

**[Agent 1] — Thiết kế / UI / Frontend**
- Phụ trách: Cấu trúc UI, CSS, layout, thiết kế component.
- Trước khi dừng, ghi vào `STATE.md`:
  > *"Đã xây xong form đăng nhập. Cần Agent 2 nối API auth."*

**[Agent 2] — Logic / API / Backend**
- Phụ trách: Hàm xử lý, dữ liệu, tích hợp API.
- Trước khi dừng, ghi vào `STATE.md`:
  > *"API auth xong rồi. Agent 1 có thể nối form vào được rồi."*

### Khi một Agent hết quota
Nói với Agent còn lại:
> *"Đối tác của bạn hết quota. Đọc `STATE.md` và tiếp quản phần việc của họ nhé."*

---

## Kết thúc phiên làm việc

Trước khi đóng, nói với AI:
> *"Tổng hợp lại những gì làm hôm nay vào `$VIBE_HUB/SESSION_LOGS/latest.md` để lần sau làm tiếp."*

---

## Mẹo

- Luôn bắt đầu bằng cách nhắc AI đọc `STATE.md`. Đây là thói quen quan trọng nhất.
- Ghi mô tả task trong `STATE.md` ngắn gọn và cụ thể — ghi mơ hồ sẽ gây nhầm lẫn ngữ cảnh.
- Nếu dự án lớn dần, chia `STATE.md` thành các phase và lưu các phase cũ vào `STATE-archive.md`.

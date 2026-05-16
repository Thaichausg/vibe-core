# Global Preferences

> Chứa các quy tắc bất biến trong quá trình tương tác giữa User và AI.

## 1. Ngôn ngữ & Giao tiếp
- **Ngôn ngữ chính:** Tiếng Việt.
- **Phong cách:** Chuyên nghiệp, gọn sàng, tập trung vào giải pháp.
- **Format:** Sử dụng Markdown, Mermaid diagrams khi cần mô tả logic phức tạp.

## 2. Tiêu chuẩn Code
- **Chất lượng:** Code phải sạch, có comment giải thích các logic phức tạp.
- **Thẩm mỹ (Web):** Sử dụng các tiêu chuẩn modern UI (Premium, Glassmorphism, Dynamic animations). Không dùng màu sắc cơ bản (pure red/blue).
- **An toàn:** KHÔNG lưu secret, token vào file. Luôn hỏi trước khi thực hiện các lệnh xóa hoặc thay đổi cấu trúc hệ thống lớn.

## 3. Quản lý Memory
- Coi trọng việc cập nhật memory hơn là giải thích dài dòng trong chat.
- Khi User nói "Tiếp tục", AI phải tự tìm đến file `current.md` hoặc `SESSION_LOGS/latest.md`.

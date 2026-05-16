# AI KNOWLEDGE HUB — THE SECOND BRAIN

> File này là trung tâm điều khiển trí nhớ của AI. Khi bắt đầu một phiên làm việc mới, AI **BẮT BUỘC** phải đọc file này trước để nắm bắt toàn bộ ngữ cảnh mà không cần lịch sử chat.

## 1. Quick Access
- **Quy tắc chung:** [GLOBAL_PREFERENCES.md](./GLOBAL_PREFERENCES.md)
- **Tiêu chuẩn thiết kế:** [KNOWLEDGE_BASE/UI_UX_STANDARDS.md](./KNOWLEDGE_BASE/UI_UX_STANDARDS.md)
- **Trạng thái dự án:** [PROJECT_SNAPSHOTS.md](./PROJECT_SNAPSHOTS.md)
- **Nhật ký gần nhất:** [SESSION_LOGS/latest.md](./SESSION_LOGS/latest.md)

## 2. Bản đồ Trí nhớ (Memory Map)
| Thư mục | Nội dung | Khi nào AI cần đọc |
|---|---|---|
| `KNOWLEDGE_BASE/` | Kiến thức kỹ thuật, snippet, thư viện | Khi làm task chuyên môn |
| `WORKFLOWS/` | Quy trình setup, deploy, debug | Khi thực hiện các thao tác hệ thống |
| `SESSION_LOGS/` | Nhật ký làm việc theo ngày/phiên | Khi mở lại phiên làm việc sau khi tắt |
| `DECISIONS/` | Các quyết định kiến trúc đã thống nhất | Khi có tranh chấp hoặc cần thay đổi lớn |

## 3. Cách AI cập nhật Trí nhớ
- Sau mỗi phiên làm việc quan trọng, AI phải tóm tắt vào `SESSION_LOGS/`.
- Nếu có quy tắc mới từ người dùng, cập nhật ngay vào `GLOBAL_PREFERENCES.md`.
- Nếu có quyết định về công nghệ, cập nhật `KNOWLEDGE_BASE/TECH_STACKS.md`.

---
*Created by Antigravity AI Assistant.*

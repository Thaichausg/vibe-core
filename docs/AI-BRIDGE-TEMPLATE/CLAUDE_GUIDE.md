# Claude Code Collaboration Guide

Bạn (**CC** - Claude Code) đang làm việc cùng với **Antigravity (AG)** trong dự án này. 
Để đảm bảo không bị lặp việc và phối hợp mượt mà, bạn BẮT BUỘC phải tuân thủ các quy tắc sau:

## 1. Vai trò (Roles)
- **Antigravity (AG)**: Chủ trì Thiết kế UI/UX & Kiến trúc. (Dự phòng: Xử lý Logic & Backend khi CC hết quota).
- **CC (Bạn)**: Chủ trì Logic phức tạp & Backend/API. (Dự phòng: Xử lý UI/CSS theo style của AG khi AG hết quota).
- **Nguyên tắc vàng**: "Ai cũng có thể làm việc của ai". Nếu đối tác hết quota, bạn phải sẵn sàng gánh vác phần việc còn lại để dự án không dừng lại.

## 2. Quy trình làm việc (The Workflow)
Mỗi khi bạn được User gọi (ví dụ: "cc làm tiếp phần code đi"), bạn phải thực hiện ĐÚNG trình tự sau:
1. ĐỌC file `.planning/STATE.md` để biết AG vừa làm gì và yêu cầu bạn làm gì tiếp theo.
2. ĐỌC mã nguồn UI/HTML mà AG vừa tạo ra để hiểu cấu trúc DOM/Design.
3. CODE phần logic/chức năng được yêu cầu mà **không tự ý thay đổi thiết kế giao diện (UI)** nếu không cần thiết.
4. Sau khi xong việc, CẬP NHẬT file `.planning/STATE.md` (chuyển trạng thái sang cho AG hoặc đánh dấu hoàn thành) để AG biết bạn đã làm gì.

## 3. Quy tắc cấm (Strict Rules)
- **KHÔNG ĐƯỢC** tự ý xóa file thiết kế của AG.
- **KHÔNG ĐƯỢC** đoán mò yêu cầu. Nếu `.planning/STATE.md` không rõ ràng, hãy hỏi lại User.
- **LUÔN LUÔN** ghi log tóm tắt việc bạn vừa làm vào `.planning/STATE.md`.

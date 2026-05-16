# ⚡ Vibe-Core
*[ [English](README.md) | Tiếng Việt | [中文](README-zh.md) ]*

**Một hệ thống quản lý ngữ cảnh nhẹ, dựa trên file, dành cho lập trình viên sử dụng AI (Vibe Coding).**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Windows%20%7C%20Linux-lightgrey)]()
[![AI](https://img.shields.io/badge/H%E1%BB%97%20tr%E1%BB%A3-Cursor%20%7C%20Aider%20%7C%20Claude%20Code-blue)]()

---

## Đây là gì?

Vibe-Core không phải là một framework phức tạp, cũng không phải một server nặng nề. Đây là một **triết lý quản lý ngữ cảnh tối giản** dựa trên cấu trúc file, giúp bạn làm chủ quy trình làm việc với AI một cách tự nhiên nhất.

Chúng tôi sử dụng sức mạnh của Markdown và Shell Script để xóa bỏ hai rào cản lớn nhất trong kỷ nguyên AI Coding:

1. **"Chứng mất trí nhớ" của AI:** Chấm dứt tình trạng AI quên sạch mọi thứ ngay khi bạn đóng Tab hoặc bắt đầu phiên làm việc mới.
2. **Sự xung đột giữa các Agent:** Tạo ra một "ngôn ngữ chung" (shared state) để các công cụ AI khác nhau (như Cursor và Claude Code) có thể hiểu và tiếp nối công việc của nhau mà không bị dẫm chân lên nhau.

> **Dành cho ai?** Những lập trình viên muốn tập trung vào sáng tạo thay vì cấu hình. Những ai đang sử dụng song song nhiều công cụ AI và khao khát một quy trình bàn giao (handoff) mượt mà, minh bạch và hoàn toàn riêng tư.

---

## Tính năng cốt lõi

- 🚀 **Khởi tạo Scaffold siêu tốc:** Khởi động dự án mới chỉ trong vài giây với các script `.bat` hoặc `.sh` một cú click.
- 🤝 **Bàn giao đa Agent:** Giao thức chuẩn hóa (`STATE.md`) giúp phối hợp mượt mà giữa IDE Agent (Cursor, Windsurf) và CLI Agent (Claude Code, Aider).
- 🧠 **Trí nhớ toàn cục bền vững:** Trung tâm `global-hub` đảm bảo phong cách code, sở thích và kinh nghiệm tích lũy sẽ đi theo bạn qua mọi dự án.
- 📖 **Trạng thái minh bạch:** Không database, không file nhị phân. Toàn bộ bộ nhớ AI là Markdown văn bản thuần — dễ dàng kiểm soát và quản lý bằng Git.
- 🛡️ **Quyền riêng tư tuyệt đối:** Kiến trúc 100% local-first. Ngữ cảnh dự án không bao giờ rời khỏi máy của bạn trừ khi bạn chủ động push.
- 🌐 **Hỗ trợ quốc tế:** Tài liệu sẵn có bằng Tiếng Anh, Tiếng Việt và Tiếng Trung.

---

## Cách hoạt động

Ý tưởng cốt lõi: **hệ thống thư mục của bạn chính là bộ nhớ chung.**

```
vibe-core/
├── global-hub/          # Bộ nhớ xuyên dự án (sở thích, nhật ký phiên làm việc)
├── project-scaffold/    # Template bơm vào từng dự án mới
│   └── .planning/
│       └── STATE.md     # "File bàn giao" giữa các Agent
├── docs/                # Tài liệu (en / vi / zh)
├── win-vibe-init.bat    # Khởi tạo dự án một cú click (Windows)
└── mac-vibe-init.sh     # Khởi tạo dự án một cú click (Mac/Linux)
```

Khi bạn bắt đầu một dự án mới, script khởi tạo sẽ copy scaffold vào thư mục dự án và tự động chèn prompt vào clipboard. AI của bạn đọc `STATE.md` để biết hôm qua đã làm gì và hôm nay cần làm tiếp gì.

---

## So sánh thực tế

| | AutoGen | Mem0 / Zep | Vibe-Core |
|---|---|---|---|
| **Phù hợp nhất cho** | Pipeline multi-agent tự động | App AI sản phẩm cần bộ nhớ người dùng | Workflow code AI cá nhân / team nhỏ |
| **Cài đặt** | Python 3.10+, nhiều thư viện | API key, server hoặc cloud | Chỉ cần file. Không cần cài thêm. |
| **Loại bộ nhớ** | Trạng thái agent định nghĩa bằng code | Vector DB / Knowledge Graph | File Markdown thuần |
| **Minh bạch** | Khó trace logic | Embedding là hộp đen | Đọc được bằng mắt thường |
| **Scale tới** | Tự động hóa Enterprise | SaaS sản phẩm | Cá nhân / team ~5 người |

> **Vibe-Core không phải thay thế cho Mem0 hay AutoGen.** Nếu bạn đang xây dựng sản phẩm AI cần bộ nhớ dạng retrieval, hãy dùng Mem0 hoặc Zep. Nếu cần pipeline multi-agent tự động, hãy dùng AutoGen. Vibe-Core dành cho khoảng trống ở giữa: *lập trình viên đang chủ động code với công cụ AI, cần trạng thái chung, không cần hạ tầng phức tạp.*

---

## Bắt đầu nhanh

### Bước 1: Cài đặt (chỉ 1 lần)

**Windows:** Chạy `system-setup\win-install-system.bat`

**Mac/Linux:** Chạy `sh system-setup/mac-install-system.sh`

Lệnh này sẽ thiết lập biến môi trường `$VIBE_HUB` trỏ vào `global-hub/` và khởi tạo Git repo để quản lý phiên bản bộ nhớ.

### Bước 2: Khởi tạo dự án mới

Copy `win-vibe-init.bat` (hoặc `mac-vibe-init.sh`) vào thư mục dự án mới và chạy.

Script sẽ tự động:
- Copy scaffold (`.planning/STATE.md`, `CLAUDE_GUIDE.md`) vào dự án của bạn
- Copy prompt khởi tạo vào clipboard

Dán prompt đó vào khung chat AI là bắt đầu ngay.

### Bước 3: Làm việc với nhiều Agent

Mở `.planning/STATE.md`. File này là bảng công việc chung.

- Gán task cho từng Agent cụ thể
- Ghi lại ghi chú bàn giao khi chuyển giữa các công cụ AI
- Bất kỳ Agent nào làm xong lượt phải cập nhật file này trước khi dừng

---

## Giới hạn

- **Cần kỷ luật.** Nếu bạn không cập nhật `STATE.md`, các Agent sẽ mất ngữ cảnh. Hệ thống tốt hay không tùy thuộc vào chất lượng log bạn ghi.
- **Không phù hợp team lớn.** Trạng thái dạng file thiếu cơ chế đồng bộ sẽ khó quản lý khi có hơn ~5 người cộng tác.
- **Không có retrieval.** Ngữ cảnh được load thủ công, không được tìm kiếm hay xếp hạng. Dự án dài hạn sẽ cần tổng hợp lại định kỳ.

---

## Tài liệu

- 🇬🇧 [English Docs](docs/en/)
- 🇻🇳 [Tài liệu Tiếng Việt](docs/vi/)
- 🇨🇳 [中文文档](docs/zh/)

---

## Tác giả

**HUỲNH THÁI CHÂU**
- **GitHub:** [@Thaichausg](https://github.com/Thaichausg)
- **Email:** chatgpt.htc@gmail.com

---

## Giấy phép

MIT — dùng thoải mái, chỉnh sửa và chia sẻ lại.

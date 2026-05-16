# ⚡ Bắt đầu nhanh: Khởi tạo dự án mới

> Dùng file này khi bạn vừa tạo một thư mục dự án trống và muốn bơm bộ nhớ AI vào.

---

## Bước 1: Bơm Scaffold vào dự án

### Cách A: Chạy script tự động (Nhanh nhất)
1. Copy **`win-vibe-init.bat`** (Windows) hoặc **`mac-vibe-init.sh`** (Mac/Linux) vào thư mục dự án.
2. Chạy file đó.

### Cách B: Lệnh Terminal
```bash
cp -r "$VIBE_HUB/../project-scaffold/*" .
```

---

## Bước 2: Kích hoạt AI

Prompt khởi tạo đã được **tự động copy vào clipboard**.

Nhấn `Ctrl+V` (hoặc `Cmd+V`) vào khung chat AI và Enter.

AI sẽ đọc `CLAUDE_GUIDE.md` để hiểu cấu trúc bộ nhớ dự án và tự động kết nối với `global-hub`.

---

## Những gì được bơm vào dự án?

```
your-project/
├── .planning/
│   └── STATE.md     # Bảng công việc chung cho tất cả agent
└── CLAUDE_GUIDE.md  # Hướng dẫn cho AI về cách dùng hệ thống bộ nhớ
```

**Chỉ vậy thôi.** Không có file thừa, không có cấu hình ẩn.

---

**Tiếp theo:** Mở `01_QUICK_WORKFLOW.md` để học cách phối hợp nhiều AI Agent.

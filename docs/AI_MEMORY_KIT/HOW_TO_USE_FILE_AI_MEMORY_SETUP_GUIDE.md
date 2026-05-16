# Hướng dẫn sử dụng AI_MEMORY_KIT

> File này dành cho **bạn** đọc — không phải AI. Mục tiêu: nhớ cách dùng `AI_MEMORY_KIT` để AI tạo memory nhanh, đúng chuẩn và tiết kiệm quota cho dự án mới.

---

## 1. AI_MEMORY_KIT gồm những gì?

| File/thư mục | Dành cho | Mục đích |
|---|---|---|
| `AI_MEMORY_KIT/AI_MEMORY_SETUP_GUIDE.md` | AI đọc | Hướng dẫn AI tạo cấu trúc memory đúng chuẩn |
| `AI_MEMORY_KIT/HOW_TO_USE_FILE_AI_MEMORY_SETUP_GUIDE.md` | **Bạn đọc** | File này — hướng dẫn bạn cách dùng kit |
| `PROJECT_MEMORY.md` | AI đọc | File được sinh riêng cho từng dự án mới |
| `.memory/` | AI đọc | Thư mục memory chi tiết, chỉ tạo khi dự án là website/webapp |

> Ghi nhớ: `PROJECT_MEMORY.md` **không** phải file dùng chung. Nó được tạo riêng trong từng repo.

---

## 2. Cách dùng đơn giản với dự án mới

### Bước 1 — Copy thư mục kit vào repo mới

Copy nguyên thư mục:

```text
AI_MEMORY_KIT
```

vào root của dự án mới.

Ví dụ:

```text
My-New-Project/
  AI_MEMORY_KIT/
    AI_MEMORY_SETUP_GUIDE.md
    HOW_TO_USE_FILE_AI_MEMORY_SETUP_GUIDE.md
```

### Bước 2 — Nói với AI

**Nếu bạn muốn AI tự phân tích loại dự án:**

```text
Đọc AI_MEMORY_KIT/AI_MEMORY_SETUP_GUIDE.md và tạo memory cho repo này
```

**Nếu bạn đã biết rõ loại dự án:**

```text
Đọc AI_MEMORY_KIT/AI_MEMORY_SETUP_GUIDE.md và tạo memory cho repo này theo chuẩn landing-page
```

```text
Đọc AI_MEMORY_KIT/AI_MEMORY_SETUP_GUIDE.md và tạo memory cho repo này theo chuẩn website
```

```text
Đọc AI_MEMORY_KIT/AI_MEMORY_SETUP_GUIDE.md và tạo memory cho repo này theo chuẩn webapp
```

### Bước 2.2 — Kịch bản "Lười copy" (Dùng đường dẫn tuyệt đối)

Nếu bạn không muốn copy thư mục `AI_MEMORY_KIT` vào từng dự án, bạn có thể gọi thẳng từ ổ D:

```text
Đọc d:\AI - VIBE CODING\AI_MEMORY_KIT\AI_MEMORY_SETUP_GUIDE.md và tạo memory cho repo này
```

### Bước 2.3 — Kịch bản "Phó mặc cho AI" (Tự động phân tích)

Nếu bạn không biết dự án thuộc loại nào, hãy bảo AI tự quét:

```text
Đọc AI_MEMORY_KIT/AI_MEMORY_SETUP_GUIDE.md và tự phân tích loại dự án để tạo memory phù hợp
```

AI sẽ dựa vào cấu trúc file (HTML, JS, Python, API...) để quyết định chuẩn `webapp`, `website` hay `landing-page`.

### Bước 3 — Sau này mở lại dự án

Chỉ cần nói:

```text
Đọc PROJECT_MEMORY.md và tiếp tục
```

hoặc ngắn hơn:

```text
Tiếp tục dự án
```

AI sẽ đọc `PROJECT_MEMORY.md`, sau đó đọc `.memory/current.md` nếu dự án có thư mục `.memory/`.

---

## 3. Chọn chuẩn nào?

| Dùng chuẩn | Khi nào |
|---|---|
| `landing-page` | Repo chỉ có 1 trang, tập trung UI/CTA/SEO |
| `website` | Có nhiều trang, blog, docs, content, navigation |
| `webapp` | Có login, dashboard, API, database, auth, admin |

---

## 4. AI sẽ tự động làm gì?

- Đọc `AI_MEMORY_KIT/AI_MEMORY_SETUP_GUIDE.md`.
- Quét cấu trúc repo.
- Tạo `PROJECT_MEMORY.md`.
- Tạo `.memory/` nếu dự án là website/webapp.
- Điền thông tin từ repo thực tế.
- Đánh dấu `TODO:` nếu thiếu thông tin thay vì đoán bừa.

---

## Kịch bản 2 — Mở lại dự án đã có memory

Chỉ cần nói:

```
Đọc PROJECT_MEMORY.md và tiếp tục
```

hoặc ngắn hơn:

```
Tiếp tục dự án
```

AI sẽ đọc `PROJECT_MEMORY.md` → đọc `.memory/current.md` → làm tiếp task đang dở.

---

## Kịch bản 3 — Khi memory bị cũ hoặc lệch

Nói với AI:

```
Cập nhật PROJECT_MEMORY.md theo trạng thái repo hiện tại
```

hoặc:

```
Tối ưu lại memory cho tiết kiệm quota
```

---

## Kịch bản 4 — Khi muốn cập nhật task đang làm

Sau khi xong một task lớn:

```
Cập nhật current.md — task vừa hoàn thành là [tên task], next task là [tên task]
```

---

## Kịch bản 5 — Khi dự án phát triển thêm module mới

Ví dụ webapp mới có thêm billing:

```
Đọc AI_MEMORY_SETUP_GUIDE và tạo thêm module memory cho billing
```

---

## Quy tắc quan trọng bạn cần nhớ

### ✅ Nên làm

- Luôn giữ `AI_MEMORY_SETUP_GUIDE.md` trong repo hoặc chỗ dễ tìm.
- Copy file này khi tạo repo mới.
- Chạy lệnh memory setup ngay khi bắt đầu dự án mới — không đợi đến khi dự án lớn.
- Nhờ AI cập nhật `current.md` sau mỗi task quan trọng.

### ❌ Không làm

- Không nhờ AI lưu token, password, private key vào memory.
- Không nhồi toàn bộ source code vào file memory.
- Không để file memory dài hàng nghìn dòng.

---

## Lệnh tham khảo nhanh

```bash
# Bắt đầu dự án mới
Đọc AI_MEMORY_SETUP_GUIDE và tạo memory cho repo này theo chuẩn landing-page
Đọc AI_MEMORY_SETUP_GUIDE và tạo memory cho repo này theo chuẩn website
Đọc AI_MEMORY_SETUP_GUIDE và tạo memory cho repo này theo chuẩn webapp

# Mở lại dự án
Đọc PROJECT_MEMORY.md và tiếp tục

# Cập nhật memory
Cập nhật current.md theo task hiện tại
Tối ưu lại memory cho tiết kiệm quota

# Thêm module mới
Đọc AI_MEMORY_SETUP_GUIDE và tạo thêm module memory cho [tên module]
```

---

## Cấu trúc file sẽ được tạo cho mỗi loại dự án

### Landing page

```
repo/
  AI_MEMORY_SETUP_GUIDE.md
  PROJECT_MEMORY.md         ← 1 file duy nhất
```

### Website

```
repo/
  AI_MEMORY_SETUP_GUIDE.md
  PROJECT_MEMORY.md         ← index ngắn
  .memory/
    current.md              ← việc đang làm
    structure.md            ← route/page map
    seo.md                  ← chiến lược SEO
    content.md              ← nội dung/copy
    design.md               ← UI/style rules
    deployment.md           ← deploy flow
```

### Webapp

```
repo/
  AI_MEMORY_SETUP_GUIDE.md
  PROJECT_MEMORY.md         ← index ngắn + Read Next
  .memory/
    current.md              ← việc đang làm
    architecture.md         ← kiến trúc tổng thể
    workflows.md            ← quy trình chuẩn
    conventions.md          ← quy tắc code
    deployment.md           ← deploy/build
    env.md                  ← biến môi trường (chỉ tên, không lưu giá trị)
    testing.md              ← test/validate
    modules/
      auth.md
      api.md
      database.md
      ui.md
      [thêm module khác nếu cần]
    decisions/
      adr-001-*.md          ← quyết định kiến trúc lâu dài
```

---

## 6. Tích hợp với AI_KNOWLEDGE_HUB (Bộ não trung tâm)

Để AI luôn nhớ "Vibe" của bạn trên mọi dự án, hãy đảm bảo dự án mới được liên kết với Hub.

**Cách làm:**
Sau khi AI tạo xong `PROJECT_MEMORY.md`, hãy bảo AI:
> *"Liên kết dự án này với AI_KNOWLEDGE_HUB và cập nhật quy tắc từ GLOBAL_PREFERENCES.md"*

**Lợi ích:**
- AI sẽ biết bạn thích tiếng Việt, phong cách thiết kế Dark Luxury, hay các quy tắc code sạch mà không cần bạn phải nhắc lại ở từng dự án riêng lẻ.
- Các bài học từ dự án này sẽ được AI tóm tắt lại vào `AI_KNOWLEDGE_HUB/SESSION_LOGS/` để các phiên làm việc sau (ở bất kỳ dự án nào khác) AI đều nhớ được.

---

## Mẹo tối ưu quota khi làm việc với AI

1. **Đặc tả rõ phạm vi task** → AI không cần đọc quá nhiều file.
   ```
   Sửa lỗi SEO ở trang About — đọc .memory/seo.md trước
   ```

2. **Cho biết file đang xem** → AI không cần dò toàn bộ repo.
   ```
   Mở index.html, sửa phần trending section
   ```

3. **Dùng current.md** → AI tiếp tục đúng chỗ dở, không hỏi lại.
   ```
   Tiếp tục task đang làm trong current.md
   ```

4. **Không dán toàn bộ code vào chat** → Để AI tự đọc file.
   ```
   Xem file update_dashboard.ps1 và giải thích logic scan
   ```

5. **Cập nhật memory sau milestone lớn** → Phiên sau không phải kể lại từ đầu.

# AI_MEMORY_SETUP_GUIDE

> File này dành cho AI đọc trước khi khởi tạo memory cho một dự án mới. Mục tiêu: tạo cấu trúc ghi nhớ tối ưu quota, truy xuất nhanh, dễ tiếp tục sau khi tắt/mở lại phiên làm việc.

## 0. Nguyên tắc bắt buộc

1. Luôn trả lời người dùng bằng tiếng Việt.
2. Không lưu secrets vào memory:
   - token
   - password
   - private key
   - API secret
   - cookie/session
3. Memory không thay thế source code.
4. Không copy toàn bộ code vào memory.
5. Chỉ lưu thông tin bền vững:
   - mục tiêu dự án
   - cấu trúc repo
   - workflow
   - quy tắc code
   - module chính
   - task đang dở
   - quyết định kiến trúc
6. Tối ưu quota bằng nguyên tắc:
   - `PROJECT_MEMORY.md` là file index ngắn.
   - Chi tiết tách vào `.memory/` nếu dự án đủ lớn.
   - Khi làm task, chỉ đọc file memory liên quan.

---

## 1. Quy trình AI phải làm khi vào dự án mới

### Bước 1 — Nhận diện loại repo

Phân loại repo vào một trong ba nhóm:

```text
landing-page
website
webapp
```

Dựa vào dấu hiệu:

| Loại | Dấu hiệu |
|---|---|
| Landing page | 1 trang chính, ít logic, tập trung CTA/SEO/UI |
| Website | Nhiều trang, content, blog, SEO, navigation |
| Webapp | Có login, dashboard, API, database, auth, state, payment, admin |

Nếu không chắc, hỏi người dùng hoặc chọn loại gần nhất.

---

### Bước 2 — Tạo cấu trúc memory phù hợp

- Landing page: tạo 1 file `PROJECT_MEMORY.md`.
- Website: tạo `PROJECT_MEMORY.md` + `.memory/` cơ bản.
- Webapp: tạo `PROJECT_MEMORY.md` + `.memory/` module hóa.

---

### Bước 3 — Điền thông tin tối thiểu

AI nên tự thu thập từ repo nếu có thể:

- tên dự án
- workspace path
- stack
- file chính
- script dev/build/deploy
- remote git
- branch
- live URL nếu có trong README/package config
- cấu trúc thư mục
- task đang dở nếu người dùng đang yêu cầu

Nếu thiếu thông tin, ghi `TODO:` thay vì đoán bừa.

---

### Bước 4 — Cập nhật memory sau task

Sau mỗi task đáng kể, cập nhật:

- `Current Task`
- `Recently Completed`
- module memory liên quan
- workflow hoặc decision nếu có thay đổi lâu dài

---

## 2. Template cho Landing Page

### Khi dùng

Dùng cho repo nhỏ, ví dụ:

```text
index.html
style.css
script.js
assets/
```

hoặc Vite/Next nhưng chỉ phục vụ một trang marketing.

### Cấu trúc cần tạo

```text
PROJECT_MEMORY.md
```

### Nội dung `PROJECT_MEMORY.md`

```md
# PROJECT_MEMORY — <Project Name>

> Memory tối ưu quota cho landing page. Đọc file này trước khi làm việc.

## 0. Quick Resume
- Project type: Landing page
- Workspace: `<path>`
- Main file/app entry: `TODO`
- Stack: `TODO`
- Remote: `TODO`
- Branch: `TODO`
- Live URL: `TODO`
- Deploy: `TODO`
- Current task: `TODO`
- User rule: always answer in Vietnamese

## 1. Goal
Landing page này dùng để: `TODO`

## 2. Structure
| Path | Role |
|---|---|
| `TODO` | `TODO` |

## 3. Design Rules
- Visual style: `TODO`
- Color palette: `TODO`
- Typography: `TODO`
- Motion/animation: `TODO`
- Responsive priority: mobile/tablet/desktop

## 4. Sections
- Hero: `TODO`
- Features: `TODO`
- CTA: `TODO`
- FAQ: `TODO`
- Footer: `TODO`

## 5. SEO
- Title: `TODO`
- Description: `TODO`
- Keywords: `TODO`
- OG image: `TODO`

## 6. Workflow
- Dev command: `TODO`
- Build command: `TODO`
- Deploy flow: `TODO`

## 7. Current Task
- Task: `TODO`
- Status: `TODO`
- Files touched: `TODO`
- Next step: `TODO`

## 8. Safety Notes
- Do not store secrets.
- Ask before destructive actions.
- Preserve design direction unless user requests changes.
```

---

## 3. Template cho Website

### Khi dùng

Dùng cho repo có nhiều trang/content/SEO:

```text
home
about
services
blog
contact
docs
```

### Cấu trúc cần tạo

```text
PROJECT_MEMORY.md
.memory/
  current.md
  structure.md
  seo.md
  content.md
  design.md
  deployment.md
```

### Nội dung `PROJECT_MEMORY.md`

```md
# PROJECT_MEMORY — <Project Name>

> Index memory tối ưu quota cho website. Đọc file này trước, sau đó đọc file trong Read Next theo task.

## 0. Quick Resume
- Project type: Website
- Workspace: `<path>`
- Stack: `TODO`
- Remote: `TODO`
- Branch: `TODO`
- Live URL: `TODO`
- Deploy: `TODO`
- Current task: `TODO`
- User rule: always answer in Vietnamese

## 1. Read Next
- Việc đang dở → `.memory/current.md`
- Cấu trúc route/file → `.memory/structure.md`
- SEO/meta/schema → `.memory/seo.md`
- Nội dung/copywriting → `.memory/content.md`
- UI/design → `.memory/design.md`
- Deploy/build → `.memory/deployment.md`

## 2. Project Goal
`TODO`

## 3. Safety Notes
- Do not store secrets.
- Ask before destructive actions.
- Keep memory concise; do not paste full source code.
```

### Nội dung `.memory/current.md`

```md
# Current Work

## Active Task
- Task: `TODO`
- Status: `TODO`
- Goal: `TODO`
- Files touched: `TODO`
- Next step: `TODO`

## Recently Completed
- `TODO`

## Blockers / Questions
- `TODO`
```

### Nội dung `.memory/structure.md`

```md
# Structure

## Routes / Pages
| Route | Purpose | Main file | Status |
|---|---|---|---|
| `/` | `TODO` | `TODO` | `TODO` |

## Key Directories
| Path | Role |
|---|---|
| `TODO` | `TODO` |
```

### Nội dung `.memory/seo.md`

```md
# SEO

## Global SEO
- Site title pattern: `TODO`
- Meta description style: `TODO`
- Target audience: `TODO`
- Main keywords: `TODO`
- OG/Twitter image: `TODO`

## Page SEO
| Page | Title | Description | Keyword | Status |
|---|---|---|---|---|
| Home | `TODO` | `TODO` | `TODO` | `TODO` |
```

### Nội dung `.memory/content.md`

```md
# Content

## Brand Voice
- Tone: `TODO`
- Language: `TODO`
- Avoid: `TODO`

## Page Copy Notes
| Page | Notes |
|---|---|
| Home | `TODO` |
```

### Nội dung `.memory/design.md`

```md
# Design

## Visual Direction
- Style: `TODO`
- Colors: `TODO`
- Fonts: `TODO`
- Components: `TODO`
- Animation: `TODO`

## Rules
- Reuse existing components/styles.
- Avoid one-off colors unless approved.
- Preserve responsive behavior.
```

### Nội dung `.memory/deployment.md`

```md
# Deployment

## Platform
- Provider: `TODO`
- Live URL: `TODO`
- Branch: `TODO`

## Commands
- Dev: `TODO`
- Build: `TODO`
- Test: `TODO`
- Deploy: `TODO`

## Notes
- Env vars required: `TODO`
- Post-deploy verification: `TODO`
```

---

## 4. Template cho Webapp

### Khi dùng

Dùng cho repo có nhiều logic/module:

```text
login/auth
dashboard
API
database
admin
payments
roles
background jobs
realtime
```

### Cấu trúc cần tạo

```text
PROJECT_MEMORY.md
.memory/
  current.md
  architecture.md
  workflows.md
  conventions.md
  deployment.md
  env.md
  testing.md
  modules/
    auth.md
    api.md
    database.md
    ui.md
  decisions/
    adr-001-initial-architecture.md
```

AI có thể thêm module khác nếu repo có, ví dụ:

```text
billing.md
notifications.md
admin.md
search.md
storage.md
```

### Nội dung `PROJECT_MEMORY.md`

```md
# PROJECT_MEMORY — <Project Name>

> Index memory tối ưu quota cho webapp. Đọc file này trước, sau đó đọc `current.md` và module liên quan.

## 0. Quick Resume
- Project type: Webapp
- Workspace: `<path>`
- Stack: `TODO`
- Frontend: `TODO`
- Backend: `TODO`
- Database: `TODO`
- Auth: `TODO`
- Remote: `TODO`
- Branch: `TODO`
- Live URL: `TODO`
- Current task: `TODO`
- User rule: always answer in Vietnamese

## 1. Read Next
- Việc đang dở → `.memory/current.md`
- Kiến trúc tổng quan → `.memory/architecture.md`
- Quy trình làm việc → `.memory/workflows.md`
- Quy tắc code → `.memory/conventions.md`
- Deploy/build → `.memory/deployment.md`
- Env/config → `.memory/env.md`
- Test/validation → `.memory/testing.md`
- Auth task → `.memory/modules/auth.md`
- API task → `.memory/modules/api.md`
- DB task → `.memory/modules/database.md`
- UI task → `.memory/modules/ui.md`
- Quyết định kiến trúc → `.memory/decisions/`

## 2. Project Goal
`TODO`

## 3. Safety Notes
- Never store secrets in memory.
- Never log tokens/passwords.
- Ask before migrations/destructive DB changes/force push.
- Keep memory concise; do not paste full source code.
```

### Nội dung `.memory/current.md`

```md
# Current Work

## Active Task
- Task: `TODO`
- Status: `TODO`
- Goal: `TODO`
- Related module: `TODO`
- Files touched: `TODO`
- Next step: `TODO`

## Validation
- Command: `TODO`
- Expected result: `TODO`

## Recently Completed
- `TODO`

## Blockers / Questions
- `TODO`
```

### Nội dung `.memory/architecture.md`

```md
# Architecture

## Stack
- Frontend: `TODO`
- Backend: `TODO`
- Database: `TODO`
- ORM: `TODO`
- Auth: `TODO`
- Storage: `TODO`
- Payments: `TODO`
- Realtime/background jobs: `TODO`

## Request Flow
`Client → Route/UI → API/Server Action → Service → Database`

## Key Directories
| Path | Role |
|---|---|
| `TODO` | `TODO` |

## Data Flow Notes
- `TODO`
```

### Nội dung `.memory/workflows.md`

```md
# Workflows

## Add Feature
1. Read `PROJECT_MEMORY.md`.
2. Read `.memory/current.md`.
3. Read related module memory.
4. Inspect current implementation.
5. Implement minimal safe change.
6. Run relevant validation.
7. Update memory.

## Debug Bug
1. Reproduce or identify symptom.
2. Locate module.
3. Check known issues.
4. Patch root cause.
5. Add/update test if suitable.
6. Update module memory if lesson is durable.

## Deploy
1. Check git status.
2. Run lint/test/build as required.
3. Commit/push only when user wants.
4. Verify live app.
```

### Nội dung `.memory/conventions.md`

```md
# Conventions

## Code Style
- `TODO`

## UI
- Reuse design system/components.
- Avoid one-off inline styles unless local-only.

## API
- Validate input.
- Return consistent errors.
- Do not expose secrets.

## Database
- Ask before destructive migrations.
- Keep schema changes documented.

## Git
- Commit style: `TODO`
```

### Nội dung `.memory/deployment.md`

```md
# Deployment

## Platform
- Provider: `TODO`
- Live URL: `TODO`
- Branch: `TODO`

## Commands
- Dev: `TODO`
- Build: `TODO`
- Test: `TODO`
- Deploy: `TODO`

## Release Checklist
- `TODO`
```

### Nội dung `.memory/env.md`

```md
# Environment

## Required Variables
> Chỉ lưu tên biến, không lưu giá trị secret.

| Variable | Purpose | Required locally | Required production |
|---|---|---|---|
| `TODO` | `TODO` | yes/no | yes/no |

## Notes
- Never store actual secret values in this file.
```

### Nội dung `.memory/testing.md`

```md
# Testing

## Commands
- Lint: `TODO`
- Unit test: `TODO`
- E2E: `TODO`
- Build: `TODO`

## Critical Flows To Validate
- Auth: `TODO`
- API: `TODO`
- DB: `TODO`
- UI: `TODO`
```

### Nội dung module mẫu `.memory/modules/auth.md`

```md
# Auth Module

## Purpose
`TODO`

## Key Files
- `TODO`

## Rules
- Server-side permission checks are mandatory.
- Client-side checks are UX only.
- Never log tokens/session secrets.

## Known Issues
- `TODO`

## Validation
- `TODO`
```

### Nội dung module mẫu `.memory/modules/api.md`

```md
# API Module

## Purpose
`TODO`

## Key Files
- `TODO`

## Rules
- Validate input.
- Return typed/consistent responses.
- Handle errors safely.

## Known Issues
- `TODO`

## Validation
- `TODO`
```

### Nội dung module mẫu `.memory/modules/database.md`

```md
# Database Module

## Purpose
`TODO`

## Key Files
- `TODO`

## Rules
- Ask before destructive changes.
- Document migrations.
- Avoid production data loss.

## Known Issues
- `TODO`

## Validation
- `TODO`
```

### Nội dung module mẫu `.memory/modules/ui.md`

```md
# UI Module

## Purpose
`TODO`

## Key Files
- `TODO`

## Design Rules
- Reuse components.
- Follow existing design tokens.
- Keep responsive behavior.

## Known Issues
- `TODO`

## Validation
- `TODO`
```

### Nội dung ADR mẫu `.memory/decisions/adr-001-initial-architecture.md`

```md
# ADR-001 — Initial Architecture

## Status
Proposed

## Context
`TODO`

## Decision
`TODO`

## Consequences
- `TODO`
```

---

## 5. Quy tắc đọc memory trong các phiên sau

AI phải dùng quy trình này để tiết kiệm quota:

### Landing page

```text
1. Đọc PROJECT_MEMORY.md
2. Làm task
3. Cập nhật Current Task nếu cần
```

### Website

```text
1. Đọc PROJECT_MEMORY.md
2. Đọc .memory/current.md
3. Đọc đúng file liên quan:
   - SEO → seo.md
   - UI → design.md
   - Content → content.md
   - Deploy → deployment.md
4. Làm task
5. Cập nhật current.md
```

### Webapp

```text
1. Đọc PROJECT_MEMORY.md
2. Đọc .memory/current.md
3. Xác định module liên quan
4. Đọc .memory/modules/<module>.md
5. Đọc conventions/workflows nếu sửa code quan trọng
6. Làm task
7. Validate
8. Cập nhật current.md và module memory nếu có thông tin bền vững
```

---

## 6. Khi nào phải cập nhật memory

Cập nhật memory khi:

- Thay đổi workflow dev/build/deploy.
- Thêm module lớn.
- Thay đổi stack hoặc kiến trúc.
- Có bug/lesson quan trọng.
- Hoàn thành hoặc chuyển task lớn.
- Có quy tắc mới từ người dùng.
- Có file/thư mục quan trọng mới.

Không cập nhật memory khi:

- Sửa typo nhỏ.
- Thay đổi style rất nhỏ.
- Thử nghiệm tạm thời không còn giá trị.
- Log/debug output không quan trọng.

---

## 7. Lệnh yêu cầu người dùng có thể dùng

Người dùng có thể nói:

```text
Tạo memory cho repo này theo chuẩn landing page
Tạo memory cho repo này theo chuẩn website
Tạo memory cho repo này theo chuẩn webapp
Đọc AI_MEMORY_SETUP_GUIDE và khởi tạo memory
Cập nhật current.md theo task hiện tại
Tối ưu lại memory cho tiết kiệm quota
```

---

## 8. Nâng cấp Memory (Memory Upgrade)

Khi dự án phát triển từ Landing Page lên Website hoặc Webapp, AI phải thực hiện nâng cấp cấu trúc memory:

1. **Xác định cấp độ mới:** (Website hoặc Webapp).
2. **Tạo folder `.memory/`:** Nếu trước đó chưa có.
3. **Phân rã dữ liệu:** Chuyển các thông tin từ `PROJECT_MEMORY.md` cũ vào các file module tương ứng trong `.memory/` (ví dụ: Design rules -> `design.md`, SEO -> `seo.md`, Logic -> `modules/api.md`).
4. **Cập nhật `PROJECT_MEMORY.md`:** Chuyển file này thành file Index (dùng template Website/Webapp).
5. **Thông báo:** Xác nhận với người dùng đã nâng cấp bộ nhớ thành công.

**Lệnh yêu cầu của người dùng:**
> "Dự án đã phát triển lên quy mô [Website/Webapp]. Hãy đọc AI_MEMORY_SETUP_GUIDE và nâng cấp cấu trúc memory hiện tại lên chuẩn mới."

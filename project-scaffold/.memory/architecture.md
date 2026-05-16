# Architecture

## Stack
- System: Windows
- Tools: VS Code, Git (optional)
- Entry points: 
    - `start-9router.bat`: Khởi động 9router
    - `start-ds2api.bat`: Khởi động DS2 API
    - `start-open-design.bat`: Khởi động Open Design
    - `start-open-design-web.bat`: Khởi động Open Design Web
- Sub-projects:
    - `AI Stack`: Bộ công cụ AI
    - `AI-BRIDGE-TEMPLATE`: Template bridge cho AI
    - `AI_MEMORY_KIT`: Bộ công cụ quản lý memory (đang cài đặt)
    - `ANTIGRAVITY`: AI Assistant project
    - `DOWNLOAD FILE GITHUB`: Thư mục chứa các repo tải về

## Request Flow
`User → Scripts (.bat) → Sub-projects (Node.js/Python/etc.) → Services`

## Key Directories
| Path | Role |
|---|---|
| `AI Stack/` | Chứa các thành phần cốt lõi của stack |
| `AI-BRIDGE-TEMPLATE/` | Template kết nối |
| `AI_MEMORY_KIT/` | Hướng dẫn và kit memory |
| `DOWNLOAD FILE GITHUB/` | Quản lý các source code bên thứ 3 |
| `REPO XỬ LÝ CHUNG/` | Các script xử lý dữ liệu chung |

## Data Flow Notes
- Hệ thống hoạt động theo mô hình microservices/module rời rạc kết nối qua API.

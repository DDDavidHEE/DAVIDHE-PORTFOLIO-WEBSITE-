# Hướng dẫn Update Dự án lên GitHub

## Cách 1: Sử dụng Script (Khuyến nghị)

### Windows (PowerShell):
```powershell
.\update_github.ps1 "Your commit message"
```

### Linux/Mac (Bash):
```bash
chmod +x update_github.sh
./update_github.sh "Your commit message"
```

## Cách 2: Sử dụng Git Commands thủ công

### 1. Kiểm tra trạng thái:
```bash
git status
```

### 2. Thêm tất cả các file:
```bash
git add .
```

### 3. Commit với message:
```bash
git commit -m "Update portfolio website with new features"
```

### 4. Push lên GitHub:
```bash
git push origin main
```

Nếu lần đầu push:
```bash
git push -u origin main
```

## Cách 3: Quick Commands (Copy & Paste)

### Windows PowerShell:
```powershell
git add .
git commit -m "Update portfolio website"
git push origin main
```

### Linux/Mac:
```bash
git add .
git commit -m "Update portfolio website"
git push origin main
```

## Lưu ý:

1. **Đảm bảo .gitignore đã được cập nhật** để không commit các file không cần thiết:
   - `.venv/` (virtual environment)
   - `*.db` (database files)
   - `__pycache__/` (Python cache)
   - `.env` (environment variables)

2. **Kiểm tra file trước khi commit:**
   ```bash
   git status
   ```

3. **Xem các thay đổi:**
   ```bash
   git diff
   ```

4. **Nếu có conflict:**
   ```bash
   git pull origin main
   # Resolve conflicts
   git add .
   git commit -m "Resolve conflicts"
   git push origin main
   ```

## Troubleshooting:

### Lỗi: "fatal: not a git repository"
```bash
git init
git remote add origin <your-github-repo-url>
```

### Lỗi: "Updates were rejected"
```bash
git pull origin main --rebase
git push origin main
```

### Lỗi: "Permission denied"
- Kiểm tra SSH keys hoặc Personal Access Token
- Cấu hình git credentials:
  ```bash
  git config --global user.name "Your Name"
  git config --global user.email "your.email@example.com"
  ```



# 1. Chọn image Node.js làm nền
FROM node:22-alpine

# 2. Chọn thư mục làm việc bên trong container
WORKDIR /app

# 3. Copy file cấu hình vào image
COPY package*.json ./

# 4. Cài đặt dependencies
RUN npm install

# 5. Copy source code vào image
COPY server.js ./

# 6. Khai báo port ứng dụng
EXPOSE 3000

# 7. Khởi động ứng dụng
CMD ["npm", "start"]

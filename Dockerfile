# Sử dụng Nginx làm web server
FROM nginx:alpine

# Xóa cấu hình mặc định của nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy file HTML vào thư mục web của nginx
COPY index.html /usr/share/nginx/html/index.html

# Mở port 80
EXPOSE 80

# Chạy nginx
CMD ["nginx", "-g", "daemon off;"]

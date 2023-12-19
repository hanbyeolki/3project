# Nginx 이미지 사용
FROM nginx:latest

COPY index.html /usr/share/nginx/html/
# 컨테이너 내부에서 사용할 포트 설정 (Nginx 기본 포트)
EXPOSE 80

# 컨테이너 실행 시 Nginx 시작
CMD ["nginx", "-g", "daemon off;"]
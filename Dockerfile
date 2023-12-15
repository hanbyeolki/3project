# 기반이 되는 이미지 설정 (예: Python 3.8)
FROM python:3.8.16

# 작업 디렉토리 설정
WORKDIR /app

# 호스트의 현재 디렉토리의 모든 파일을 컨테이너의 /app 디렉토리로 복사
COPY . /app

# 필요한 패키지 설치
RUN pip3 install Flask

RUN cd /app

RUN pip3 install -r requirements.txt

# Flask 애플리케이션 실행
# CMD ["python", "app.py"]

# 플라스크 애플리케이션을 환경변수로 지정
ENV FLASK_APP app

# 플라스크 애플리케이션 실행 (내장 서버 사용)
ENTRYPOINT flask run --host 0.0.0.0

# Gunicorn을 사용하여 Flask 애플리케이션을 실행하는 옵션
# RUN pip3 install gunicorn
# CMD ["gunicorn", "app:app", "-b", "0.0.0.0:8000"]
# ENTRYPOINT gunicorn -b 0.0.0.0:5000 main:app
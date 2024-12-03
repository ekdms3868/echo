# 베이스 이미지 설정
FROM python:3.10-slim

# 작업 디렉토리 설정
WORKDIR /web

# requirements.txt 복사 및 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 프로젝트 복사
COPY . .

# Django 설정
ENV DJANGO_SETTINGS_MODULE=web.settings

# 포트 노출
EXPOSE 8000

# 기본 실행 명령어 설정
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

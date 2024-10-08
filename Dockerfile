# 베이스 이미지 설정
FROM python:3.9-slim

# 작업 디렉터리 설정
WORKDIR /app

# 필요한 파일 복사
COPY app.py /app
COPY requirements.txt /app

# 필요한 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 실행
CMD ["python", "app.py"]


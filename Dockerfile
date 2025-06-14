FROM python:3.12

WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN useradd app
USER app

EXPOSE 8000

CMD ["python","app.py"]



FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY konwerter.py .
COPY produkty.xlsx .

EXPOSE 8080

CMD ["python", "konwerter.py"]


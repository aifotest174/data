FROM python:3.11-slim

WORKDIR /app

# Najpierw kopiujemy plik z wymaganiami i instalujemy biblioteki
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Dopiero potem kopiujemy resztę plików
COPY konwerter.py .
COPY produkty.xlsx .

CMD ["python", "konwerter.py"]]
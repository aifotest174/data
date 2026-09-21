# Pobierz oficjalnego Pythona
FROM python:3.11-slim

# Ustaw katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj plik z wymaganiami (jeśli masz) oraz swój skrypt
COPY konwerter.py .

# Jeśli Twój skrypt korzysta z bibliotek zewnętrznych (np. pandas, openpyxl do Excela),
# utwórz też plik requirements.txt i odkomentuj poniższą linię:
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# Komenda uruchamiająca skrypt
CMD ["python", "konwerter.py"]

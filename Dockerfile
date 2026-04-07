FROM python:3.10

WORKDIR /app

RUN apt-get update && apt-get install -y gcc libpq-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]

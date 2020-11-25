FROM python:3.5.2-slim

RUN mkdir -p /app
WORKDIR /app

COPY requirements.txt .
COPY encoded.csv .
COPY trained_model.pkl .

RUN pip install -r requirements.txt

COPY /app .

EXPOSE 5000

CMD ["python", "./main.py" ]


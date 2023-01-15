# syntax=docker/dockerfile:1

FROM python:3.9-slim

# ENV PYTHONUNBUFFERED 1

RUN mkdir /app

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "chatbot-gpt.py", "--server.port=8501", "--server.address=0.0.0.0"]


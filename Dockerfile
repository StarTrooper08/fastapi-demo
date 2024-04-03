FROM python:alpine3.19

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 3000

CMD ["uvicorn","app:app","--host","0.0.0.0","--port", "3000"]

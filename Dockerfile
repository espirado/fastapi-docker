FROM python:3.6
COPY . /app
WORKDIR /app

EXPOSE 8000:8000
RUN pip install -r requirements.txt
CMD [ "uvicorn", "app:app", "--host", "0.0.0.0", "--reload"]


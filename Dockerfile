FROM python:3.9
WORKDIR /app
ENV FLASK_APP=app
ENV FLASK_RUN_HOST=0.0.0.0
COPY . .
RUN pip install --no-cache-dir pytest -r requirements.txt
EXPOSE 5000
CMD ["flask", "run"]
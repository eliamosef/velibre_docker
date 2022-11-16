FROM python:3.7.15-slim-bullseye

COPY requirements.txt .
COPY filter_csv.py .

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "filter_csv.py"]
FROM python:3.8-slim

WORKDIR medicaldiffusion

COPY ./ ./

RUN pip install -r requirements.txt
CMD ["python", "test.py"]
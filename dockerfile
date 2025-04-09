FROM python:3.8-slim

WORKDIR medicaldiffusion

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./ ./

RUN chmod +x commands.sh
CMD ["./commands.sh"]
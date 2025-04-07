FROM python:3.8-slim

WORKDIR medicaldiffusion

COPY ./ ./

# RUN pip install -r requirements.txt
RUN chmod +x commands.sh
CMD ["./commands.sh"]
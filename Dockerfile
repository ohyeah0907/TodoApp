FROM       python:3.11-slim

WORKDIR    /code

# Install dependencies:
COPY       requirements.txt ./
RUN        pip install -r requirements.txt

COPY       . .
RUN chmod 664 /code/database
EXPOSE 5000

CMD        ["python3", "app.py"]
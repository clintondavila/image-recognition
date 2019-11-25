FROM python:3.7.4

RUN apt-get update -y
RUN apt-get install -y libspatialindex-dev

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8888
ENTRYPOINT jupyter lab --ip 0.0.0.0 --port 8888 --no-browser --allow-root --NotebookApp.token=''

FROM python:3.7

WORKDIR /app
RUN apt-get update && apt-get install -y redis
RUN pip install pipenv
COPY Pipfile Pipfile.lock ./
RUN pipenv install --system --deploy 
COPY . /app/


EXPOSE 9000
CMD ["python", "server.py"]

FROM python:3.12
EXPOSE 5000
WORKDIR /app
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
COPY . .
CMD ["flask", "run", "--host", "0.0.0.0"]

# WE MAKE THIS FILE AND RUN IN THE VENV docker build -t beginner-rest-apis-flask . <<<<<--------
# running it by --->>>> docker run -d -p 5000:5000 beginner-rest-apis-flask <<<-----

# for running the automatic rerun container -->>> docker run -dp 5000:5000 -w /app -v "$(pwd):/app" beginner-rest-apis-flask
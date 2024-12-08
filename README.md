# 1: pip install -r requirements.txt
# 2: docker build -t beginner-rest-apis-flask .
# 3: docker run -dp 5000:5000 -w /app -v "$(pwd):/app" beginner-rest-apis-flask
# 4: for every db change
# 5: flask db migrate
# 6: flask db upgrade
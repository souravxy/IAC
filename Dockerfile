from flask
WORKDIR /app
COPY hello-flask.py /app
CMD python3 /app/hello-flask.py

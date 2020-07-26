from python
RUN pip3 install flask
WORKDIR /app
COPY hello-flask.py /app
CMD python3 /app/hello-flask.py

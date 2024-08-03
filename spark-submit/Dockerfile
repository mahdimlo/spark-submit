FROM bde2020/spark-submit:3.3.0-hadoop3.3

COPY word_count.py /app/word_count.py

WORKDIR /app

ENTRYPOINT ["/spark/bin/spark-submit", "/app/word_count.py"]

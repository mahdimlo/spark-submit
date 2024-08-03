FROM bde2020/spark-submit:2.4.5-hadoop2.7

# Copy the word count script to the container
COPY word_count.py /app/word_count.py

# Set the working directory
WORKDIR /app

# Entry point to run the Spark job
ENTRYPOINT ["/spark/bin/spark-submit", "/app/word_count.py"]

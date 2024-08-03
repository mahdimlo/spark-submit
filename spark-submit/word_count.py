from pyspark import SparkContext, SparkConf
import sys

if __name__ == "__main__":

    conf = SparkConf().setAppName("WordCount")
    sc = SparkContext(conf=conf)

    input_file = sys.argv[1]
    output_dir = sys.argv[2]

    lines = sc.textFile(input_file)
    counts = lines.flatMap(lambda line: line.split(" ")) \
                  .map(lambda word: (word, 1)) \
                  .reduceByKey(lambda a, b: a + b)

    counts.saveAsTextFile(output_dir)

    sc.stop()

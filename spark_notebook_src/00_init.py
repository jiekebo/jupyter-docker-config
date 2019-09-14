from pyspark.sql import SparkSession

spark = (SparkSession.builder
 .appName("local app")
 .master("local[*]")
 .config('spark.driver.memory','7g')
 .config('spark.driver.maxResultSize','5g')
 .config('spark.jars.packages','com.databricks:spark-avro_2.11:3.2.0')
).getOrCreate()

sc = spark.sparkContext

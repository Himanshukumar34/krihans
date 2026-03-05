# employees management system in python with sql
import mysql.connector
mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    database="employees",
    password="12qwQW?@")
print("connected")

# now connect mycursr

myconn=mydb.cursor()

myconn.execute("""CREATE TABLE employees(
               id INT UNIQUE)
""")
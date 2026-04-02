# employees management system in python with sql
import mysql.connector

mydb=mysql.connector.connect(
    host="localhost",
    user="root",
    database="employees",
    password="12qwQW?@"
)

print("connected")

myconn=mydb.cursor()

myconn.execute("""
CREATE TABLE IF NOT EXISTS employees(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    department VARCHAR(255),
    salary INT,
    email VARCHAR(255),
    join_date DATE
)
""")

def add_employees():
    name=input("Enter your name : ")
    age=int(input("Enter your age : "))
    department=input("Enter your department : ")
    salary=int(input("Enter your salary : "))
    email=input("Enter your email : ")
    date=input("Enter your join date (YYYY-MM-DD) : ")

    sql="INSERT INTO employees(name,age,department,salary,email,join_date) VALUES(%s,%s,%s,%s,%s,%s)"
    values=(name,age,department,salary,email,date)

    myconn.execute(sql,values)
    mydb.commit()

    print("Successfully saved")

def view_employees():
    myconn.execute("SELECT *FROM employees")
    data=myconn.fetchall()
    for i in data:
        print(i)

def update_employees():
    name=str(input("Enter name of employee which you want to change data :"))
    age=int(input("Enter your age:"))
    department=str(input("Enter your department :"))
    salary=int(input("Enter your salary :"))
    email=input("Enter your email :")
    sql="UPDATE employees SET age=%s, dapartment=%s ,salary= %s , email =%s WHERE name =%s"
    values =(age,department,salary,email,name)
    myconn.execute(sql,values)
    print("update employees data successfully")




while True:
    print("1. Add employees")
    print("2. view employees")
    print("3. update employees")
    print("4. delete employees ")
    print("5. exit ")
    choice=int(input("Enter your choice :"))
    if choice ==1:
        add_employees()
    elif choice==2:
        view_employees()
    elif choice==3:
        update_employees()
    else:
        print("Thanks you ")
        break 

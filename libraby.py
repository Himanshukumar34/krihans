import mysql.connector
mydb=mysql.connector.connect(
    user="root",
    host="localhost",
    password="12qwQW?@",
    database="todolist"
)
print("connected")

myconn=mydb.cursor()

myconn.execute("""
CREATE TABLE  IF NOT EXISTS todo(
        task_id INT PRIMARY KEY,
        task_name VARCHAR(255),
        status VARCHAR(255)
)""")

while True:
    print("1. Add task")
    print("2. view tasks")
    print("3. marks done as completed ")
    print("4. delete task")
    choice=int(input("Enter your choice :"))
    if choice ==1:
        taksid=int(input("Enter your id :"))
        task=str(input("Enter your task no :"))
        sql="INSERT INTO todo (task_id,task_name,status) VALUES(%s,%s,%s)"
        values=(taksid,task,"Pending")
        myconn.execute(sql,values)
        mydb.commit()
        print("your task is successfully saved ") 
    elif choice ==2:
        myconn.execute("SELECT *FROM todo;")   
        data=myconn.fetchall()
        if data:
            for i in data:
                print(i)
    elif choice==3:
        name=str(input("Enter your task which you done as a markdone:"))
        sql="UPDATE todo  SET status=%s  WHERE task_name=%s"
        values=("APPROVAL",name)
        myconn.execute(sql,values)
        mydb.commit()
        print("your task is successfully done :")
    elif choice==4:
        fan=str(input("Enter your task name: "))
        sql="DELETE FROM todo WHERE task_name=%s"
        values=(fan)
        myconn.execute(sql,values)
        mydb.commit()
        print("successfully delete ")
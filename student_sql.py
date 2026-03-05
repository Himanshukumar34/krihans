import  mysql.connector
mydb=mysql.connector.connect(
    user="root",
    password="12qwQW?@",
    host="localhost",
    database="student"
)

print("sql connected")

conn=mydb.cursor()

# create a table 
conn.execute("""
CREATE TABLE IF NOT EXISTS record (
    roll_num INT PRIMARY KEY,
    name VARCHAR(255),
    hindi_marks INT NOT NULL,
    english_marks INT NOT NULL ,
    math_marks INT NOT NULL ,
    gender VARCHAR(255)
)
""")

def add_student():
        name=str(input("Enter your name :"))
        roll=int(input("Enter your roll number :"))
        hindi=int(input("Enter your marks in hindi :"))
        english=int(input("Enter your marks in english :"))
        math=int(input("Enter your marks in math :"))
        gend=str(input("Enter your gender"))
        sql="INSERT INTO record(roll_num,name,hindi_marks,english_marks,math_marks,gender)VALUES (%s, %s, %s, %s, %s,%s)"
        values=roll,name,hindi,english,math,gend
        conn.execute(sql,values)
        mydb.commit()
        print("your record succrssfully saved ")

def view_student():
      conn.execute("SELECT * FROM record")
      data = conn.fetchall()

      if data:
         for row in data:
                print(row)
      else:
            print("⚠️ No records found")

def update_student():

    rollnum = int(input("Enter roll number to update : "))
    name1 = input("Enter new name : ")
    hindi1 = int(input("Enter new Hindi marks : "))
    english1 = int(input("Enter new English marks : "))
    math1 = int(input("Enter new Math marks : "))
    geng1=str(input("Enter your gender :"))

    sql = """
        UPDATE record
        SET name=%s, hindi_marks=%s, english_marks=%s, math_marks=%s , gender=%s
        WHERE roll_num=%s
        """

    values = (name1, hindi1, english1, math1, rollnum,geng1)

    conn.execute(sql, values)
    mydb.commit()

    print("✅ Successfully updated")

def delete_student():
  rollnum2=int(input("Enter your roll num which data you delete :"))
  sql="DELETE FROM record WHERE roll_num=%s"
  values=(rollnum2,)
  conn.execute(sql,values)
  mydb.commit()
  print("successfully saved ")
     
while True:
    print("1.Add student")
    print("2.view student")
    print("3.update_student")
    print("4. delete")
    print("5.Exit")
    choice=int(input("Enter your choice :"))
    if choice ==1:
       add_student()

    elif choice==2:
         view_student()
      
    elif choice == 3:
          update_student()
    
    elif choice==4:
         delete_student()
      
    else:
        print("thanks you ")
        break

        
            

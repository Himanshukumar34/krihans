# Library management system in python with sql
# book_id	book_title	author	member_name	issue_dat/
import mysql.connector
mydb=mysql.connector.connect(
        host="localhost",
        password="12qwQW?@",
        database="libraray",
        user="root"
)
print("connected")

myconn=mydb.cursor()

myconn.execute("""
CREATE TABLE IF NOT EXISTS books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(255),
    author VARCHAR(255),
    member_name VARCHAR(255)
);
""")
def add_books():
    book_title=str(input("Enter your title :"))
    author=str(input("Enter your author name :"))
    member=str(input("Enter your name :"))
    sql="INSERT INTO books(book_title,author,member_name ) VALUES(%s,%s,%s);"
    values=(book_title,author,member)
    myconn.execute(sql,values)
    mydb.commit() 
    print("successfully saved")

def view_all():
    name=str(input("Enter your name which you add in library: "))
    sql="SELECT *FROM books WHERE member_name=%s"
    values=(name,)
    myconn.execute(sql,values)
    data=myconn.fetchall()
    if data:
        for i in data:
            print(i)
def update():
    num2=str(input("Enter your name which you add book on that name :"))
    num1=str(input("Enter your author name :"))
    book=str(input("Enter your book_title :"))
    sql="UPDATE books SET book_title=%s, author=%s WHERE member_name=%s"
    values=(book,num1,num2)
    myconn.execute(sql,values)
    mydb.commit()
    print("update successfully  ")
while True:
    print("1. add book")
    print("2. view all")
    print("3. update")
    print("4.exit")
    choice=int(input("Enter your choice: "))
    if choice==1:
        add_books()
    elif choice==2:
        view_all()
    elif choice==3:
        update()
import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="12qwQW?@",
    database="contact"
)

print("Connected")

myconn = mydb.cursor()

myconn.execute("""
CREATE TABLE IF NOT EXISTS krishna (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    phone VARCHAR(15) NOT NULL,
    Email VARCHAR(255),
    Address VARCHAR(255)
)
""")

while True:
    print("\n1. Add contact")
    print("2. View contact")
    print("3. Search contact")
    print("4. Update contact")
    print("5. Delete contact")
    print("6. Exit")

    choice = int(input("Enter your choice: "))

    if choice == 1:
        name = input("Enter your name: ").strip()
        phone = input("Enter your phone number: ")
        email = input("Enter your email: ")
        address = input("Enter your address: ").strip()
        sql = "INSERT INTO krishna (name, phone, Email, Address) VALUES (%s, %s, %s, %s)"
        values = (name, phone, email, address)
        myconn.execute(sql, values)
        mydb.commit()

        print("✅ Contact added successfully")
    elif choice ==2:
        myconn.execute("SELECT *FROM krishna;")
        data=myconn.fetchall()
        if data:
            for i in data:
                print(i)

    elif choice==4:
        name1=str(input("Enter name which you want to update :"))
        num2=input("Enter your new phone :")
        num3=input("Enter  your new address:")
        num4=input("Enter yournew email: ")
        sql2="UPDATE krishna SET(phone=%s,Email=%s,Address=%s) WHERE name=%s"
        values2=("num2,num4,num3",name1)
        myconn.execute(sql2,values2)
        mydb.commit()
        print("successfully updated")        

    elif choice == 6:
        break


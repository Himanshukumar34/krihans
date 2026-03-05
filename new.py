import mysql.connector
from datetime import datetime

# Database connection
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password_here",
    database="grocery"
)

cursor = mydb.cursor()

# Create tables if not exist
cursor.execute("""
CREATE TABLE IF NOT EXISTS products(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price FLOAT,
    quantity INT
)
""")

cursor.execute("""
CREATE TABLE IF NOT EXISTS sales(
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    total_amount FLOAT,
    date_time DATETIME
)
""")

cursor.execute("""
CREATE TABLE IF NOT EXISTS sale_items(
    sale_item_id INT PRIMARY KEY AUTO_INCREMENT,
    sale_id INT,
    product_id INT,
    quantity INT,
    subtotal FLOAT
)
""")

mydb.commit()

# ---------------- FUNCTIONS ---------------- #

def add_product():
    name = input("Enter product name: ")
    price = float(input("Enter price: "))
    quantity = int(input("Enter quantity: "))

    sql = "INSERT INTO products (name, price, quantity) VALUES (%s, %s, %s)"
    cursor.execute(sql, (name, price, quantity))
    mydb.commit()

    print("Product added successfully!\n")


def view_products():
    cursor.execute("SELECT * FROM products")
    data = cursor.fetchall()

    print("\n---- Product List ----")
    for row in data:
        print(f"ID: {row[0]} | Name: {row[1]} | Price: {row[2]} | Stock: {row[3]}")
    print()


def generate_bill():
    cart = []
    total_amount = 0

    while True:
        product_id = int(input("Enter product ID: "))
        quantity = int(input("Enter quantity: "))

        cursor.execute("SELECT name, price, quantity FROM products WHERE product_id=%s", (product_id,))
        data = cursor.fetchone()

        if not data:
            print("Product not found!\n")
            continue

        name, price, stock = data

        if quantity > stock:
            print("Not enough stock!\n")
            continue

        subtotal = price * quantity
        total_amount += subtotal

        cart.append((product_id, quantity, subtotal))

        # Update stock
        new_stock = stock - quantity
        cursor.execute("UPDATE products SET quantity=%s WHERE product_id=%s", (new_stock, product_id))

        more = input("Add more items? (yes/no): ")
        if more.lower() != "yes":
            break

    # Save sale
    cursor.execute("INSERT INTO sales (total_amount, date_time) VALUES (%s, %s)",
                   (total_amount, datetime.now()))
    sale_id = cursor.lastrowid

    for item in cart:
        cursor.execute("INSERT INTO sale_items (sale_id, product_id, quantity, subtotal) VALUES (%s, %s, %s, %s)",
                       (sale_id, item[0], item[1], item[2]))

    mydb.commit()

    # Print bill
    print("\n------ BILL ------")
    for item in cart:
        cursor.execute("SELECT name FROM products WHERE product_id=%s", (item[0],))
        name = cursor.fetchone()[0]
        print(f"{name} | Qty: {item[1]} | Subtotal: {item[2]}")

    print("------------------")
    print("Total Amount:", total_amount)
    print("Sale ID:", sale_id)
    print("Thank You!\n")


# ---------------- MENU ---------------- #

while True:
    print("1. Add Product")
    print("2. View Products")
    print("3. Generate Bill")
    print("4. Exit")

    choice = input("Enter choice: ")

    if choice == "1":
        add_product()
    elif choice == "2":
        view_products()
    elif choice == "3":
        generate_bill()
    elif choice == "4":
        break
    else:
        print("Invalid choice\n")
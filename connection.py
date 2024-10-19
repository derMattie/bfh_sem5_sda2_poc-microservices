import mariadb
import sys


try:
    conn = mariadb.connect(
        user="root",
        password="example",
        host="0.0.0.0",
        port=3306,
        database="sda2_database"

    )
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

cur = conn.cursor()


query = "SELECT * FROM product_inventory"
cur.execute(query)
output = cur.fetchall()
print(output)


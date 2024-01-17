import mysql.connector

def list_databases(host, user, password):
    try:
        # Establish a connection to MySQL
        connection = mysql.connector.connect(
            host=host,
            user=user,
            password=password
        )

        # Create a cursor object to execute SQL queries
        cursor = connection.cursor()

        # Execute the SQL query to show all databases
        cursor.execute("SHOW DATABASES")

        # Fetch all rows (databases) from the result set
        databases = cursor.fetchall()

        # Display the list of databases
        print("List of databases:")
        for db in databases:
            print(db[0])

    except mysql.connector.Error as err:
        print(f"Error: {err}")

    finally:
        # Close the cursor and connection
        if 'cursor' in locals():
            cursor.close()
        if 'connection' in locals() and connection.is_connected():
            connection.close()

if __name__ == "__main__":
    # Replace 'your_host', 'your_user', and 'your_password' with your MySQL server details
    list_databases(host='your_host', user='your_user', password='your_password')

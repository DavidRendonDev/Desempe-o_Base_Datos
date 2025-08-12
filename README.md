# Desempe-o_Base_Datos

 Bank_bd - Node.js, Express, MySQL, and HTML
This project is a DATA BASE CRUD (Create, Read, Update, Delete) application for managing clients, built with Node.js, Express, and MySQL on the backend, and a simple HTML/JavaScript interface for the frontend.

 Features
Backend with Node.js + Express

MySQL database connection using mysql2

CRUD operations:

Create client

List clients

Update client

Delete client

Frontend with HTML, CSS, and JavaScript (Fetch API)

Basic validations on both client and server sides

Clear JSON responses for easy integration

📂 Project Structure
bash
Copiar
Editar
.
├── server.js       # Node.js server code
├── index.html       # User interface (frontend)
├── package.json     # Dependencies and scripts
└── README.md        # Project documentation
🛠 Prerequisites
Before starting, make sure you have installed:

Node.js (v14 or higher recommended)

MySQL

npm (comes with Node.js)

🗄 Database Setup
Log in to MySQL:

bash
Copiar
Editar
mysql -u root -p
Create the database:

sql
Copiar
Editar
CREATE DATABASE banco_bd;
Create the clients table:

sql
Copiar
Editar
CREATE TABLE clients (
    id_client INT PRIMARY KEY,
    name_client VARCHAR(150) NOT NULL,
    number_identification BIGINT NOT NULL UNIQUE,
    adress VARCHAR(150),
    tel VARCHAR(50),
    email VARCHAR(100)
);
(Optional) Create a dedicated database user:

sql
Copiar
Editar
CREATE USER 'banco_user'@'localhost' IDENTIFIED BY 'MySecurePassword123';
GRANT ALL PRIVILEGES ON banco_bd.* TO 'banco_user'@'localhost';
FLUSH PRIVILEGES;
⚙ Installation & Execution
Clone the repository:

bash
Copiar
Editar
git clone https://github.com/username/client-crud-project.git
cd client-crud-project
Install dependencies:

bash
Copiar
Editar
npm install express mysql2 cors
Configure database credentials in backend.js:

js
Copiar
Editar
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root', // or the user you created
    password: 'YOUR_PASSWORD',
    database: 'banco_bd',
    port: 3306
});
Start the server:

bash
Copiar
Editar
node backend.js
Open the index.html file in your browser.

🔌 API Endpoints
Method	Endpoint	Description
GET	/clientes	Get all clients
POST	/clientes	Create a new client
PUT	/clientes/:id	Update a client by ID
DELETE	/clientes/:id	Delete a client by ID

Example JSON for POST/PUT:

json
Copiar
Editar
{
    "id_client": 1002,
    "name_client": "Jackson",
    "number_identification": 123456789,
    "adress": "street 123",
    "tel": "555-1234",
    "email": "jaksonmaicon@example.com"
}
🎨 Screenshots
(You can add images of your app in action here)

📝 License
This project is licensed under the MIT License. You are free to use, modify, and distribute it, provided that you retain this attribution notice.

🤝 Contributing
Contributions are welcome! To contribute:

Fork the repository

Create a new branch (git checkout -b new-feature)

Make your changes and commit them

Push to your branch and open a Pull Request

💡 Developed with Node.js, Express, MySQL, and plenty of late-night coffee. ☕

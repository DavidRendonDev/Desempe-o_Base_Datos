CREATE DATABASE banco_bd;
USE banco_bd;

CREATE TABLE clients(
id_client INT PRIMARY KEY,
name_client VARCHAR(150) NOT NULL,
number_identification BIGINT NOT NULL UNIQUE,
adress VARCHAR(150),
tel VARCHAR(50),
email VARCHAR(100)
);

CREATE TABLE invoices(
id_invoice INT PRIMARY KEY,
invoice_number VARCHAR(50) NOT NULL UNIQUE,
invoice_period VARCHAR(20),
invoiced_amount DECIMAL(15,2),
paid_amount DECIMAL(15,2)
);

CREATE TABLE transactions(
id_transaction VARCHAR(50) PRIMARY KEY,
date_transaction DATE,
transaction_time TIME,
transaction_amount DECIMAL(15,2),
transaction_status VARCHAR(50),
transaction_type VARCHAR(50),
platform_used VARCHAR(50),
id_client INT,
id_invoice INT,
FOREIGN KEY (id_client) REFERENCES clients(id_client),
FOREIGN KEY (id_invoice) REFERENCES invoices(id_invoice)
);




SELECT c.id_client, c.name_client, SUM(t.amount) AS total_pagado
FROM clients c
JOIN invoices i ON c.id_client = i.id_client
JOIN transactions t ON i.id_invoice = t.id_invoice
GROUP BY c.id_client, c.name_client;


SELECT i.id_invoice, c.name_client, i.amount, i.paid_amount, i.status, t.id_transaction, t.amount AS pago_realizado
FROM invoices i
JOIN clients c ON i.id_client = c.id_client
LEFT JOIN transactions t ON i.id_invoice = t.id_invoice
WHERE i.status = 'pending';


SELECT t.id_transaction, t.platform, t.amount, t.transaction_date,
       c.name_client, i.id_invoice
FROM transactions t
JOIN invoices i ON t.id_invoice = i.id_invoice
JOIN clients c ON i.id_client = c.id_client
WHERE t.platform = 'Nequi'; 
















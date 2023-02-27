DROP TABLE IF EXISTS salesperson CASCADE;
CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL
);
DROP TABLE IF EXISTS sales_invoice CASCADE;
CREATE TABLE sales_invoice(
	sales_invoice_id SERIAL PRIMARY KEY,
	salesperson_id INT NOT NULL,
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
	car_id INT NOT NULL,
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	customer_id INT NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	"date" VARCHAR(20) NOT NULL
);
DROP TABLE IF EXISTS car CASCADE;
CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
	make VARCHAR(255) NOT NULL,
	model VARCHAR(255) NOT NULL,
	color VARCHAR(255),
	"year" INT NOT NULL,
	serial_number VARCHAR(255) NOT NULL,
	car_for_sale BOOLEAN NOT NULL,
	price_of_sale FLOAT4 NOT NULL
);
DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	address VARCHAR(255),
	city VARCHAR(255),
	state_province VARCHAR(255),
	country VARCHAR(255),
	postal_code VARCHAR(255),
	phone_number VARCHAR(20) NOT NULL,
	email VARCHAR(255)
);
DROP TABLE IF EXISTS service_ticket CASCADE;
CREATE TABLE service_ticket(
	service_ticket_id SERIAL PRIMARY KEY,
	car_id INT NOT NULL,
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	customer_id INT NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	date_received VARCHAR(20) NOT NULL,
	"comments" VARCHAR(255),
	date_returned_to_customer DATE NOT NULL,
	price_for_service FLOAT4 NOT NULL
);
DROP TABLE IF EXISTS mechanic CASCADE;
CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL
);
DROP TABLE IF EXISTS service_mechanic CASCADE;
CREATE TABLE service_mechanic(
	service_mechanic_id SERIAL PRIMARY KEY,
	service_ticket_id INT NOT NULL,
	FOREIGN KEY(service_ticket_id) REFERENCES service_ticket(service_ticket_id),
	service_id INT NOT NULL,
	FOREIGN KEY(service_id) REFERENCES service(service_id),
	mechanic_id INT NOT NULL,
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);
DROP TABLE IF EXISTS service CASCADE;
CREATE TABLE service(
	service_id SERIAL PRIMARY KEY,
	type_of_service VARCHAR(255) NOT NULL
);



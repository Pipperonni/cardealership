CREATE OR REPLACE PROCEDURE new_car(
	make_ VARCHAR,
	model_ VARCHAR,
	year_ INT,
	color_ VARCHAR,
	serial_Number_ VARCHAR,
	car_For_Sale_ BOOLEAN
)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO car(
		make,
		model,
		"year",
		color,
		serial_number,
		car_for_sale
	)VALUES(
		make_,
		model_,
		year_,
		color_,
		serial_Number_,
		car_For_Sale_ 
	);
END;
$$

CALL new_car('Ford', 'F-150', 2023, 'FO2X4451KL122-89RD', 'Silver', TRUE);
CALL new_car('Audi', 'A8', 2020, 'AU3557B981SD2335-74DI', FALSE);
CALL new_car('Honda', 'Accord', 2021, 'HO718K239JU7435-2NDA', 'Metalic RED', TRUE);
CALL new_car('McLaren', 'McLaren-F1', 1994, 'MC34583LA-1REN', 'Black', FALSE);
CALL new_car('Ford', 'Explorer', 2023, 'FO45H4958SR357-09RD', 'Pearl White', TRUE);
CALL new_car('Ford', 'Bronco Sport', 2022, 'FO7667HG2903K117-34RD', 'Sky Blue', TRUE);

CREATE OR REPLACE PROCEDURE new_sales_invoice(
	salesperoId INT,
	carId INT,
	customerId INT,
	date_ VARCHAR,
	price_OF_Sale_ FLOAT
)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO sales_invoice(
		salesperson_id,
		car_id,
		customer_id,
		"date",
		price_of_sale
	)VALUES(
		salesperoId,
		carId,
		customerId,
		date_,
		price_OF_Sale_
	);
END;
$$

CALL new_sales_invoice(1, 1, 1, '2022-10-07', 60000.00);
CALL new_sales_invoice(2, 5, 2, '2023-01-14', 65000.00);
CALL new_sales_invoice(3, 4, 3, '2022-07-04', 1600000.00);


CREATE OR REPLACE PROCEDURE new_salesperson(
	first_Name_ VARCHAR,
	last_Name_ VARCHAR
)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO salesperson(
		first_name,
		last_name
	)VALUES(
		first_Name_,
		last_Name_
	);
END;
$$

SELECT *
FROM customer

SELECT *
FROM salesperson; 

CALL new_salesperson('Nehemiah', 'Nicholson');
CALL new_salesperson('Blane', 'Severson');
CALL new_salesperson('Dylan', 'Lang');

CREATE OR REPLACE PROCEDURE new_customer(
	first_Name_ VARCHAR,
	last_Name_ VARCHAR,
	address_ VARCHAR,
	city_ VARCHAR,
	state_Province_ VARCHAR,
	country_ VARCHAR,
	postal_Code_ VARCHAR,
	phone_Number_ VARCHAR,
	email_ VARCHAR
)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO customer(
		first_name,
		last_name,
		address,
		city,
		state_province,
		country,
		postal_code,
		phone_number,
		email
	)VALUES(
		first_Name_,
		last_Name_,
		address_,
		city_,
		state_Province_,
		country_,
		postal_Code_,
		phone_Number_,
		email_
	);
END;
$$

CALL new_customer('Dylan', 'Smith', '123 Walk Pkway', 'New Elm', 'Alberta', 'Canada', 'T7X-0N9', '587-555-5555', 'd.smith@lifeisgreat.com');
CALL new_customer('Lucas', 'Lang', '456 Rollin Blvd', 'St. Peter', 'Minnesota', 'United States', '55678', '651-555-5555', 'l.lang@grassangels.org');  
CALL new_customer('Pip', 'Eroni', '3478 Ball Rd', 'Norwood', 'Minnesota', 'United States', '55932', '507-555-5555', 'P.pipperoni@lovesqueekytoys.dog');
 

CREATE OR REPLACE PROCEDURE new_service_ticket(
	carId INT,
	customerId INT,
	date_Received_ DATE,
	comment_ VARCHAR,
	date_Returned_To_Customer_ DATE,
	price_For_Service_ FLOAT
)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO service_ticket(
		car_id,
		customer_id,
		date_received,
		"comments",
		date_returned_to_customer,
		price_for_service
	)VALUES(
		carId,
		customerId,
		date_Received_,
		comment_,
		date_Returned_To_Customer_,
		price_For_Service_
	);
END;
$$

CALL new_service_ticket(1, 1, '2023-01-23', 'Brake pads getting thin.', '2023-01-23', 50.00);
CALL new_service_ticket(3, 2, '2023-01-28', 'Tires tred getting low', '2023-01-29', 2500.00); 

CREATE OR REPLACE PROCEDURE new_mechanic(
	first_Name_ VARCHAR,
	last_Name_ VARCHAR
)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO mechanic(
		first_name,
		last_name
	)VALUES(
		first_Name_,
		last_Name_
	);
END;
$$

CALL new_mechanic('Billy', 'Hamton');
CALL new_mechanic('Jill', 'Frank'); 

CREATE OR REPLACE PROCEDURE new_service_mechanic(
	service_ticketId INT,
	serviceId INT,
	mechanicId INT
)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO service_mechanic(
		service_ticket_id,
		service_id,
		mechanic_id
	)VALUES(
		service_ticketId,
		serviceId,
		mechanicId
	);
END;
$$

CALL new_service_mechanic(1, 1, 2);
CALL new_service_mechanic(2, 3, 1);

CREATE OR REPLACE PROCEDURE new_service(
	type_OF_Service_ VARCHAR
)
LANGUAGE plpgsql AS $$
BEGIN 
	INSERT INTO service(
		type_of_service
	)VALUES(
		type_OF_Service_
	);
END;
$$

CALL new_service('oil change');
CALL new_service('brake pad replacement');
CALL new_service('tire change'); 











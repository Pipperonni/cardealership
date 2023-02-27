-- Function

CREATE OR REPLACE FUNCTION end_of_year_sale(
	carId INT,
	sale_percentage FLOAT4
)
RETURNS INT
LANGUAGE plpgsql AS $$
BEGIN 
	UPDATE car
	SET price_of_sale = price_of_sale - ((sale_percentage / 100) * price_of_sale)
	WHERE car_id = carId;
	RETURN carId;
END;
$$


CREATE OR REPLACE FUNCTION birthday_discount(
	service_ticketId INT,
	bday_discount FLOAT4
)
RETURNS INT
LANGUAGE plpgsql AS $$
BEGIN 
	UPDATE service_ticket
	SET price_for_service = price_for_service - ((bday_discount / 100) * price_for_service)
	WHERE service_ticket_id = service_ticketId;
	RETURN service_ticketId;
END;
$$

CREATE OR REPLACE FUNCTION name_change_(
	mechanicId INT,
	new_last_name VARCHAR
)
RETURNS VARCHAR
LANGUAGE plpgsql AS $$
BEGIN 
	UPDATE mechanic
	SET last_name = new_last_name
	WHERE mechanic_id = mechanicId;
	RETURN mechanicId;
END;
$$

CREATE OR REPLACE FUNCTION name_change_sales(
	salespersonId INT,
	new_last_name VARCHAR
)
RETURNS VARCHAR
LANGUAGE plpgsql AS $$
BEGIN 
	UPDATE salesperson 
	SET last_name = new_last_name
	WHERE salesperson_id = salespersonId;
	RETURN salespersonId;
END;
$$












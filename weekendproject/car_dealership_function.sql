-- Function

CREATE OR REPLACE FUNCTION end_of_year_sale(
	carId INT,
	sale_percentage FLOAT4
)
RETURNS INT
LANGUAGE plpgsql AS $$
BEGIN 
	UPDATE car
	SET price_of_sale = price_of_sale - (sale_percentage * price_of_sale)
	WHERE car_id = carId;
	RETURN carId;
END;
$$

SELECT end_of_year_sale(12, 0.10);


SELECT *
FROM car;


CREATE OR REPLACE FUNCTION birthday_discount(
	service_ticketId INT,
	bday_discount FLOAT4
)
RETURNS INT
LANGUAGE plpgsql AS $$
BEGIN 
	UPDATE service_ticket
	SET price_for_service = price_for_service - (bday_discount * price_for_service)
	WHERE service_ticket_id = service_ticketId;
	RETURN service_ticketId;
END;
$$

SELECT birthday_discount(2, 0.10);
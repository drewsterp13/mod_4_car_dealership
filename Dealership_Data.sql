insert into address (
	address_id,
	street,
	city,
	state,
	zip,
	extra
) values (
	1,
	'121 Minecraft Way',
	'Golden',
	'Colorado',
	80401,
	'---'
);

insert into address (
	address_id,
	street,
	city,
	state,
	zip,
	extra
) values (
	2,
	'34 Lakeview Ave',
	'Chicago',
	'Illinois',
	60007,
	'Apartment Door #2'
);

insert into address (
	address_id,
	street,
	city,
	state,
	zip,
	extra
) values (
	3,
	'1843 Mountain Rd',
	'Clarksburg',
	'West Virginia',
	26301,
	'---'
);

insert into address (
	address_id,
	street,
	city,
	state,
	zip,
	extra
) values (
	4,
	'847 Kyle St',
	'Lakewood',
	'Colorado',
	80123,
	'---'
);

insert into salesperson (
	salesperson_id,
	first_name,
	last_name,
	phone,
	address_id
) values (
	1,
	'Hugh',
	'Lanham',
	'303-123-001',
	1
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	phone,
	address_id
) values (
	1,
	'Drake',
	'Wilson',
	'312-123-456',
	2
);

insert into customer (
	customer_id,
	first_name,
	last_name,
	phone,
	address_id
) values (
	2,
	'Kelly',
	'Thompson',
	'304-123-456',
	3
);

insert into mechanic (
	mechanic_id,
	first_name,
	last_name,
	phone,
	address_id
) values (
	1,
	'Denny',
	'Degennaro',
	'303-123-002',
	4
);

insert into car (
	car_id,
	make,
	model,
	year_,
	color,
	salesperson_id,
	customer_id
) values (
	1,
	'Honda',
	'CR-V',
	2015,
	'red',
	1,
	2
);

insert into car (
	car_id,
	make,
	model,
	year_,
	color,
	salesperson_id,
	customer_id
) values (
	2,
	'BMW',
	'X3',
	2018,
	'blue',
	1,
	1
);

insert into invoice (
	invoice_id,
	total_loan,
	monthly_term,
	interest_rate,
	monthly_payment,
	down_payment,
	salesperson_id,
	customer_id,
	car_id
) values (
	1,
	15500,
	72,
	9.653,
	256,
	1550,
	1,
	2,
	1
);

insert into invoice (
	invoice_id,
	total_loan,
	monthly_term,
	interest_rate,
	monthly_payment,
	down_payment,
	salesperson_id,
	customer_id,
	car_id
) values (
	2,
	29722,
	48,
	10.895,
	690,
	2972,
	1,
	1,
	2
);

insert into service_ticket (
	ticket_id,
	goal,
	car_id,
	customer_id
) values (
	1,
	'Repair Air Conditioning',
	1,
	2
);

insert into part (
	part_id,
	part_name
) values (
	1,
	'Evaporator'
);

insert into part (
	part_id,
	part_name
) values (
	2,
	'Windshield Wiper'
);

insert into part (
	part_id,
	part_name
) values (
	3,
	'Low-Beam Headlight Bulb'
);

insert into mechanic_job (
	job_id,
	operation,
	price,
	part_id,
	mechanic_id,
	car_id,
	ticket_id
) values (
	1,
	'Replaced Low-Beam Headlight Bulb',
	10.99,
	1,
	1,
	1,
	1
);
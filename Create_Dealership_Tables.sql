create table address (
	address_id SERIAL primary key,
	street VARCHAR(200),
	city VARCHAR(50),
	state VARCHAR(40),
	zip INTEGER,
	extra VARCHAR(200)
);

create table salesperson (
	salesperson_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone VARCHAR(50),
	address_id INTEGER,
	foreign key(address_id) references address(address_id)
);

create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone VARCHAR(50),
	address_id INTEGER,
	foreign key(address_id) references address(address_id)
);

create table mechanic (
	mechanic_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone VARCHAR(50),
	address_id INTEGER,
	foreign key(address_id) references address(address_id)
);

create table car (
	car_id SERIAL primary key,
	make VARCHAR(50),
	model VARCHAR(50),
	year_ INTEGER,
	color VARCHAR(20),
	salesperson_id INTEGER,
	customer_id INTEGER,
	foreign key(salesperson_id) references salesperson(salesperson_id),
	foreign key(customer_id) references customer(customer_id)
);

create table invoice (
	invoice_id SERIAL primary key,
	total_loan NUMERIC(11,2),
	monthly_term INTEGER,
	-- interest_rate is percentage
	interest_rate DECIMAL,
	monthly_payment NUMERIC(8,2),
	down_payment NUMERIC(8,2),
	date_n_time TIMESTAMP default current_timestamp,
	salesperson_id INTEGER,
	customer_id INTEGER,
	car_id INTEGER,
	foreign key(salesperson_id) references salesperson(salesperson_id),
	foreign key(customer_id) references customer(customer_id),
	foreign key(car_id) references car(car_id)
);

create table service_ticket (
	ticket_id SERIAL primary key,
	date_n_time TIMESTAMP default current_timestamp,
	goal VARCHAR(200),
	car_id INTEGER,
	customer_id INTEGER,
	foreign key(car_id) references car(car_id),
	foreign key(customer_id) references customer(customer_id)
);

create table part (
	part_id SERIAL primary key,
	part_name VARCHAR(50)
);

create table mechanic_job (
	job_id SERIAL primary key,
	date_n_time TIMESTAMP default current_timestamp,
	operation VARCHAR(50),
	price NUMERIC(11,2),
	part_id INTEGER,
	mechanic_id INTEGER,
	car_id INTEGER,
	ticket_id INTEGER,
	foreign key(part_id) references part(part_id),
	foreign key(mechanic_id) references mechanic(mechanic_id),
	foreign key(car_id) references car(car_id),
	foreign key(ticket_id) references service_ticket(ticket_id)
);

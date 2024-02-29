select * from address;

select * from salesperson;

select * from customer;

select * from mechanic;

select * from car;

select * from invoice;

select * from service_ticket;

select * from part;

select * from mechanic_job;

select car_id, make, model, year_, color, car.customer_id, first_name, last_name
from car
inner join customer
on car.customer_id = customer.customer_id;

select operation, price, mechanic_job.part_id, part_name, car_id
from mechanic_job
inner join part
on mechanic_job.part_id = part.part_id;
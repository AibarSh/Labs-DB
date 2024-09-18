drop database if exists lab1;
create database  lab1;
create table if not exists clients(
    client_id serial primary key ,
    first_name varchar(60),
    last_name varchar(60),
    email varchar(100),
    date_joined date
);
alter table clients add column if not exists status boolean;
alter table clients alter column status set default true;
alter table clients alter column client_id type integer;

insert into clients(first_name, last_name, email, date_joined)
values ('Ibragim', 'Muminov', 'Muminov@mail.ru', '12.12.2012');

create table if not exists orders(
    order_id  serial,
    order_name varchar(100),
    client_id integer references clients(client_id)
);

select first_name, last_name from clients;

drop table orders;
drop database lab1;

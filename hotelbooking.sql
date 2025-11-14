use dhanvitha;
create table guests(guest_id int auto_increment primary key, guest_name varchar(100) not null,
email varchar(100) unique,
phone varchar(20));
create table rooms (room_id int auto_increment primary key,
room_num varchar(10) not null unique,
room_type varchar(50) not null,
price_per_night decimal(10,2) not null,
room_status varchar(20) default 'available');
create table bookings(booking_id int auto_increment primary key,
guest_id int,room_id int,
check_in_date date not null,
total_amount decimal(10,2),foreign key(guest_id) references guests(guest_id),
foreign key (room_id) references rooms(room_id));
create table payments
(payment_id int auto_increment primary key,
booking_id int,
amount decimal(10,2)not null,
payment_date date not null,
payment_method varchar(50),
foreign key(booking_id) references bookings(booking_id)); 
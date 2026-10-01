create table labs (
  id serial primary key, name text, department text,
  capacity int, location text, status text default 'Available');

create table equipment (
  id serial primary key, name text, category text,
  total_qty int, available_qty int, lab_id int references labs(id),
  condition text default 'Good', maintenance_status text default 'OK');

create table users (
  id serial primary key, name text, email text unique,
  password text, role text);  -- student / staff / admin

create table bookings (
  id serial primary key, user_id int references users(id),
  resource_type text, resource_id int, quantity int default 1,
  start_time timestamptz, end_time timestamptz, purpose text,
  status text default 'Pending Approval', approved_by int,
  issued_at timestamptz, due_at timestamptz, returned_at timestamptz,
  return_condition text, created_at timestamptz default now());

-- hackathon only: allow the anon key to read/write
alter table labs disable row level security;
alter table equipment disable row level security;
alter table users disable row level security;
alter table bookings disable row level security;

insert into users (name,email,password,role) values
 ('Dr. Coordinator', 'coordinator@uni.edu', '1234', 'coordinator'),
 ('Student One','student@uni.edu','1234','student'),
 ('Lab Staff','staff@uni.edu','1234','staff'),
 ('Admin','admin@uni.edu','1234','admin');
insert into labs (name,department,capacity,location) values
 ('Embedded Systems Lab','CS',30,'Block A'),
 ('Networking Lab','CS',20,'Block B'),
 ('Electronics Lab','EE',40,'Block C');
insert into equipment (name,category,total_qty,available_qty,lab_id) values
 ('Arduino Uno Kit','Electronics',20,7,1),
 ('Projector','AV',5,5,2),
 ('Router','Networking',10,10,2);

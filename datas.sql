create Table users (
  user_id integer,
  first_name varchar(100),
  last_name varchar(100),
  email varchar(100),
  password_hash varchar(255),
  created_at date
);

create Table courses (
  course_id integer,
  course_name varchar(10),
  course_description varchar(10),
  created_at date,
  instructor_id integer
);
create Table instructors(
  instructor_id integer,
  instructor_name varchar(100)
);
create Table course_enrollment(
  enrollment_id integer,
  user_id integer,
  course_id integer,
  enrollment_date date
);
create Table modules(
  module_id integer,
  course_id integer,
  module_name varchar(100),
  module_description varchar(100)
);
create Table activities(
  activity_id integer,
  course_id integer,
  activity_type varchar(100),
  activity_description varchar(100),
  passing_score int
);
create Table result(
  result_id integer,
  user_id integer,
  activity_id integer,
  activity_date date,
  course_id integer,
  score int
);


insert into users (user_id, first_name, last_name, email, password_hash, created_at) values (3, 'Lilian', 'Yelden', 'lyelden0@oaic.gov.au', '$2a$04$QhMNBAp28/kGeOq5AIhXsePws1NOy1JMqngUerXlPT36CguXRtdb2', '2024-02-07');
insert into users (user_id, first_name, last_name, email, password_hash, created_at) values (9, 'Lauritz', 'McCallum', 'lmccallum1@cafepress.com', '$2a$04$KPljTG4YLSgAQ09ljZenpOJlN2lIo.KbTW25HvBjKo0SDf0Ic/GzW', '2024-04-02');
insert into users (user_id, first_name, last_name, email, password_hash, created_at) values (4, 'Cynthy', 'Kamienski', 'ckamienski2@narod.ru', '$2a$04$wXWDiRhdvkEk.0NAJzLv4uAzhkiP3y8qi1V98aGPZty38.kxMcLKa', '2024-08-16');
insert into users (user_id, first_name, last_name, email, password_hash, created_at) values (7, 'Rawley', 'Deere', 'rdeere3@smugmug.com', '$2a$04$OfMgLtepL2SWI26LW8BxXOEguPBYMekf.ECdTc3TcZlAvyay0w53a', '2024-03-10');
insert into users (user_id, first_name, last_name, email, password_hash, created_at) values (1, 'Alasteir', 'Matashkin', 'amatashkin4@mozilla.org', '$2a$04$J6Kt6UA./zP/jfA7YwD3uOLvOMilA9Kx6ZfbZipQVOwK8.IOcIsOW', '2023-09-16');
insert into users (user_id, first_name, last_name, email, password_hash, created_at) values (9, 'Enrico', 'Poletto', 'epoletto5@samsung.com', '$2a$04$enTfgPOAm3rUmChR4icKvuvwPpIQGcIMcCEH.SndBy07a0zBCiwkW', '2024-05-17');
insert into users (user_id, first_name, last_name, email, password_hash, created_at) values (9, 'Haven', 'De Leek', 'hdeleek6@netlog.com', '$2a$04$vemysSu8W3tO6eF6c13gu.YhPlokp7afPEc.OodmUjWy3akZwg28.', '2023-10-19');
insert into users (user_id, first_name, last_name, email, password_hash, created_at) values (5, 'Lynnell', 'Keyte', 'lkeyte7@cloudflare.com', '$2a$04$ygPOX.GSOxcMAEk.GuthmOqIYoWRUGLMQEfcnEpR6BMJD6gAbSAve', '2023-12-08');
insert into users (user_id, first_name, last_name, email, password_hash, created_at) values (8, 'Leyla', 'Duffer', 'lduffer8@webnode.com', '$2a$04$MK6IrJfYmNpV7/Y5SAAWAeiPjES366rF2xVKl.6QHEIxU30MwrWx6', '2024-04-29');
insert into users (user_id, first_name, last_name, email, password_hash, created_at) values (6, 'Elle', 'Mahood', 'emahood9@webmd.com', '$2a$04$BaQv8NnA8RZ5bwVCyyIiFuRQAQBKSZ9LIbIo6NtSzqXuq8kIK52a6', '2024-04-22');


insert into courses (course_id, course_name, course_description, created_at, instructor_id) values (1, 'Corrina', 'Oth fractures of lower end of left radius, init for clos fx', '2024-09-04', 10);
insert into courses (course_id, course_name, course_description, created_at, instructor_id) values (4, 'Terra', 'Sepsis due to streptococcus, group B', '2024-06-28', 6);
insert into courses (course_id, course_name, course_description, created_at, instructor_id) values (2, 'Miquela', 'Unspecified superficial injury of right great toe', '2024-04-06', 5);
insert into courses (course_id, course_name, course_description, created_at, instructor_id) values (2, 'Maggie', 'Anterior dislocation of unspecified humerus, subs encntr', '2023-12-07', 6);
insert into courses (course_id, course_name, course_description, created_at, instructor_id) values (5, 'Lezley', 'Displ transverse fx shaft of r rad, 7thR', '2023-10-31', 6);
insert into courses (course_id, course_name, course_description, created_at, instructor_id) values (9, 'Jay', 'Displ transverse fx shaft of l tibia, 7thE', '2024-08-11', 4);
insert into courses (course_id, course_name, course_description, created_at, instructor_id) values (4, 'Bernadette', 'Major laceration of celiac artery, initial encounter', '2023-12-20', 9);
insert into courses (course_id, course_name, course_description, created_at, instructor_id) values (2, 'Ashbey', 'Lac w/o fb of right lesser toe(s) w/o damage to nail, init', '2023-10-23', 5);
insert into courses (course_id, course_name, course_description, created_at, instructor_id) values (3, 'Idette', 'Major laceration of right internal jugular vein, subs encntr', '2024-05-03', 6);
insert into courses (course_id, course_name, course_description, created_at, instructor_id) values (9, 'Kesley', 'External constriction, unspecified ankle, subs encntr', '2023-11-20', 2);


insert into instructors (instructor_id, instructor_name) values (1, 'Cristobal');
insert into instructors (instructor_id, instructor_name) values (8, 'Niccolo');
insert into instructors (instructor_id, instructor_name) values (3, 'Glyn');
insert into instructors (instructor_id, instructor_name) values (9, 'Mechelle');
insert into instructors (instructor_id, instructor_name) values (7, 'Siegfried');
insert into instructors (instructor_id, instructor_name) values (8, 'Dominique');
insert into instructors (instructor_id, instructor_name) values (4, 'Sallyanne');
insert into instructors (instructor_id, instructor_name) values (6, 'Forest');
insert into instructors (instructor_id, instructor_name) values (9, 'Betta');
insert into instructors (instructor_id, instructor_name) values (2, 'Allissa');

insert into course_enrollment (enrollment_id, user_id, course_id, enrollment_date) values (6, 7, 10, '2024-03-19');
insert into course_enrollment (enrollment_id, user_id, course_id, enrollment_date) values (4, 9, 8, '2024-08-02');
insert into course_enrollment (enrollment_id, user_id, course_id, enrollment_date) values (3, 8, 9, '2024-03-18');
insert into course_enrollment (enrollment_id, user_id, course_id, enrollment_date) values (3, 7, 3, '2024-01-12');
insert into course_enrollment (enrollment_id, user_id, course_id, enrollment_date) values (8, 6, 4, '2024-03-28');
insert into course_enrollment (enrollment_id, user_id, course_id, enrollment_date) values (9, 7, 1, '2023-12-29');
insert into course_enrollment (enrollment_id, user_id, course_id, enrollment_date) values (2, 3, 10, '2024-02-13');
insert into course_enrollment (enrollment_id, user_id, course_id, enrollment_date) values (3, 3, 6, '2023-09-12');
insert into course_enrollment (enrollment_id, user_id, course_id, enrollment_date) values (2, 4, 10, '2024-03-18');
insert into course_enrollment (enrollment_id, user_id, course_id, enrollment_date) values (5, 1, 6, '2024-01-03');


insert into modules (module_id, course_id, module_name, module_description) values (6, 10, 'Ponds', 'Nondisp transverse fx shaft of r ulna, 7thC');
insert into modules (module_id, course_id, module_name, module_description) values (10, 5, 'Maximum Strength Heartburn Relief 150', 'Poisoning by unsp systemic antibiotic, accidental, subs');
insert into modules (module_id, course_id, module_name, module_description) values (4, 2, 'PENICILLIUM CHRYSOGENUM VAR CHRYSOGENUM', 'Other cervical disc degeneration, cervicothoracic region');
insert into modules (module_id, course_id, module_name, module_description) values (6, 5, 'Old Spice', 'Unsp pedal cyclist injured in collision w ped/anml in traf');
insert into modules (module_id, course_id, module_name, module_description) values (4, 7, 'Canadian Blue Grass', 'Disp fx of 2nd metatarsal bone, r ft, subs for fx w nonunion');
insert into modules (module_id, course_id, module_name, module_description) values (3, 7, 'OC Eight', 'Spondylopathy in diseases classd elswhr, cervical region');
insert into modules (module_id, course_id, module_name, module_description) values (6, 1, 'Enlon', 'Injury of tibial nerve at lower leg level, left leg');
insert into modules (module_id, course_id, module_name, module_description) values (7, 6, 'sunmark ibuprofen ib', 'Insect bite (nonvenomous) of right back wall of thorax, subs');
insert into modules (module_id, course_id, module_name, module_description) values (4, 4, 'SUBSYS', 'Person inj wh brd/alit from special industr vehicle, init');
insert into modules (module_id, course_id, module_name, module_description) values (6, 7, 'Icy Hot No Mess Vapor Cough Suppresant', 'Contaminated med/biolog sub, transfused or infused');

insert into activities (activity_id, course_id, activity_type, activity_description, passing_score) values (7, 6, 'TEO', 'Nondisp fx of medial malleolus of unspecified tibia', 98);
insert into activities (activity_id, course_id, activity_type, activity_description, passing_score) values (7, 4, 'SZK', 'Prsn brd/alit pk-up/van injured in collision w 2/3-whl mv', 76);
insert into activities (activity_id, course_id, activity_type, activity_description, passing_score) values (9, 5, '0', 'Puncture wound with foreign body of nose, initial encounter', 75);
insert into activities (activity_id, course_id, activity_type, activity_description, passing_score) values (7, 4, 'RPM', 'Subluxation of tarsometatarsal joint of left foot, subs', 93);
insert into activities (activity_id, course_id, activity_type, activity_description, passing_score) values (1, 9, 'YSF', 'Sledder colliding with stationary object, subs encntr', 84);
insert into activities (activity_id, course_id, activity_type, activity_description, passing_score) values (7, 7, 'MEB', 'Chorioamnionitis, third trimester, not applicable or unsp', 76);
insert into activities (activity_id, course_id, activity_type, activity_description, passing_score) values (5, 4, 'CBF', 'Unsp comp of fb acc left in body following endoscopic exam', 76);
insert into activities (activity_id, course_id, activity_type, activity_description, passing_score) values (9, 4, 'KFG', 'Loose body in unspecified ankle', 95);
insert into activities (activity_id, course_id, activity_type, activity_description, passing_score) values (6, 5, 'IOP', 'Open bite of right index finger with damage to nail', 92);
insert into activities (activity_id, course_id, activity_type, activity_description, passing_score) values (6, 5, 'MYP', 'Corrosion of 3rd deg mu sites of right ankle and foot, subs', 98);

insert into result (result_id, user_id, activity_id, activity_date, course_id, score) values (1, 3, 7, '2024-03-12', 6, 87);
insert into result (result_id, user_id, activity_id, activity_date, course_id, score) values (2, 7, 7, '2024-03-14', 4, 90);
insert into result (result_id, user_id, activity_id, activity_date, course_id, score) values (3, 8, 9, '2024-04-01', 5, 78);
insert into result (result_id, user_id, activity_id, activity_date, course_id, score) values (4, 6, 7, '2024-02-20', 7, 85);
insert into result (result_id, user_id, activity_id, activity_date, course_id, score) values (5, 1, 6, '2024-01-25', 9, 92);
insert into result (result_id, user_id, activity_id, activity_date, course_id, score) values (6, 9, 7, '2024-03-10', 4, 77);
insert into result (result_id, user_id, activity_id, activity_date, course_id, score) values (7, 4, 5, '2024-01-14', 4, 80);
insert into result (result_id, user_id, activity_id, activity_date, course_id, score) values (8, 7, 1, '2024-02-19', 1, 89);
insert into result (result_id, user_id, activity_id, activity_date, course_id, score) values (9, 5, 6, '2024-03-02', 5, 91);
insert into result (result_id, user_id, activity_id, activity_date, course_id, score) values (10, 3, 9, '2024-03-22', 9, 94);

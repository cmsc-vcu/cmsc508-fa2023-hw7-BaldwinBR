# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleroles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

Create TABLE skills(
    id int not null,
    name varchar(255) not null,
    description varchar(255) not null,
    tag varchar(255) not null,
    url varchar(255),
    time_commitment int,
    PRIMARY KEY (id)
);

# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills(id, name, description, tag, url, time_commitment) values 
(1, 'Kick Boxing', 'Visualize this!', 'Skill 1', 'https://www.wikihow.com/Become-a-Professional-Kick-Boxer', 2000),
(2, 'Python Coding', 'Writing Python programs', 'Skill 2', 'https://docs.python.org/3/tutorial/index.html', 200),
(3, 'Minecraft Parkour', 'Jumping from block to block', 'Skill 3', 'https://oneblockmc.com/ultimate-guide-minecraft-parkour/', 20),
(4, 'Ghost Hunting', 'Creepy fun for the whole family!', 'Skill 4', 'https://thehauntghosttours.com/blog/what-is-ghost-hunting-10-things-to-know-before-you-go/', 5),
(5, 'Baking', 'Chemistry in the kitchen!', 'Skill 5', 'https://beyondfrosting.com/the-best-baking-tutorials/', 300),
(6, 'Balloon Animals', 'Squeak Squeak Squeak', 'Skill 6', 'https://www.wikihow.com/Make-Balloon-Animals', 10),
(7, 'Knife Making', 'Hope you like using sandpaper', 'Skill 7', 'https://www.cypresscreekknives.com/14-tips-for-the-beginner-knifemaker/', 1000),
(8, 'Hyperpop Production', 'Gec Gec Gec Gec Gec Gec Gec Gec', 'Skill 8', 'https://www.waves.com/how-to-produce-hyperpop-songs-tips', 500);




# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    id int NOT NULL,
    first_name varchar(256),
    last_name varchar(256) NOT NULL,
    email varchar(256),
    linkedin_url varchar(256),
    headshot_url varchar(256),
    discord_handle varchar(256),
    brief_bio varchar(256),
    date_joined date NOT NULL,
    PRIMARY KEY (id)
);



# Section 5
# Populate people with ten people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) values 
(1, 'Benjamin', 'Person 1', 'BenjaminBaldwin.BRB@gmail.com', 'https://www.linkedin.com/in/benbaldwin/', 'https://cdn.theatlantic.com/thumbor/luOapLq2Nv6_btbTRM9DTwhGjlc=/200x0:1000x800/540x540/media/img/mt/2019/02/momo2/original.jpg', 'hooligan5942', 'Best Employee Winner, 10 Years in a row', '2013-03-12'),
(2, 'Annabel', 'Person 2', 'AnnabelLee@gmail.com', 'https://www.linkedin.com/in/AnnabelLee/', 'https://variety.com/wp-content/uploads/2023/09/TFHU_102_Unit_02888RC.jpg?w=1024', 'ALee19', 'I hate Fortunato Pharmaceuticals', '2023-02-15'),
(3, 'Camille', 'Person 3', 'CamilleLEspanaye@gmail.com', 'https://www.linkedin.com/in/CamilleLEspanaye/', 'https://static.wikia.nocookie.net/the-haunting-of-hill-house3356/images/2/2c/Camille.jpg/revision/latest?cb=20231012173729', 'ChimpHater', 'Public Relations Expert', '2022-09-28'),
(4, 'Verna', 'Person 4', 'VernaDeath@gmail.com', 'https://www.linkedin.com/in/VernaDeath/', 'https://variety.com/wp-content/uploads/2023/09/TFHU_105_Unit_02597RC.jpg?w=1024', 'InTheShadows', 'I cosplay as a Raven on the weekends', '2021-11-07'),
(5, 'Roderick', 'Person 5', 'RoderickUsher@gmail.com', 'https://www.linkedin.com/in/RoderickUsher/', 'https://variety.com/wp-content/uploads/2023/08/TFHU_101_Unit_06012RC.jpg?w=1024', 'LigadoneRules', 'CEO, Father, Husband, Drug Dealer', '2020-05-12'),
(6, 'Arthur', 'Person 6', 'ArthurPym@gmail.com', 'https://www.linkedin.com/ArthurPym/', 'https://variety.com/wp-content/uploads/2023/09/TFHU_101_Unit_00667RC.jpg?w=1024', 'ExpeditionTales', '*Pym declined to give a description*', '2018-04-03'),
(7, 'Frederick', 'Person 7', 'FrederickUsher@gmail.com', 'https://www.linkedin.com/in/FrederickUsher/', 'https://variety.com/wp-content/uploads/2023/09/TFHU_103_Unit_02287RC.jpg', 'PyschoLoser', 'Family Man', '2016-08-20'),
(8, 'Leo', 'Person 8', 'LeoUsher@gmail.com', 'https://www.linkedin.com/in/LeoUsher/', 'https://variety.com/wp-content/uploads/2023/08/TFHU_104_Unit_00824RC.jpg?w=1024', 'Napoleon', 'Two things I love in life: Gaming & Cats', '2020-11-25'),
(9, 'Tamerlane', 'Person 9', 'TamerlaneUsher@gmail.com', 'https://www.linkedin.com/in/TamerlaneUsher/', 'https://variety.com/wp-content/uploads/2023/08/TFHU_106_Unit_04274RC.jpg?w=1024', 'GoldBug', 'I own way too many mirrors', '2014-06-30'),
(10, 'Victorine', 'Person 10', 'VictorineLaFourcade@gmail.com', 'https://www.linkedin.com/in/VictorineLaFourcade/', 'https://variety.com/wp-content/uploads/2023/09/TFHU_103_Unit_03085RC.jpg?w=1024', 'IHeartYou', 'Hey, whats that ticking sound?', '2014-01-18')
;


# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.


create table peopleskills(
    id int auto_increment NOT NULL,
    skills_id int NOT NULL,
    people_id int NOT NULL,
    date_acquired date default (current_date) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (skills_id) references skills (id),
    FOREIGN KEY (people_id) references people (id),
    UNIQUE (skills_id, people_id)
);



# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.

insert into peopleskills (people_id, skills_id, date_acquired) values
    (1,1,'2016-01-01'),
    (1,3,'2017-05-16'),
    (1,6,'2018-09-29'),
    (2,3,'2019-02-12'),
    (2,4,'2020-06-27'),
    (2,5,'2021-11-10'),
    (3,1,'2016-02-23'),
    (3,5,'2017-07-09'),
    (5,3,'2018-11-22'),
    (5,6,'2020-04-07'),
    (6,2,'2021-08-21'),
    (6,3,'2022-01-03'),
    (6,4,'2016-04-14'),
    (7,3,'2017-08-28'),
    (7,5,'2019-01-10'),
    (7,6,'2020-05-25'),
    (8,1,'2021-10-07'),
    (8,3,'2016-06-05'),
    (8,5,'2017-10-19'),
    (8,6,'2019-03-03'),
    (9,2,'2023-07-23'),
    (9,5,'2016-09-23'),
    (9,6,'2022-09-01'),
    (10,1,'2022-06-16'),
    (10,4,'2023-10-30'),
    (10,5,'2019-11-04');

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

create table roles (
    id int NOT NULL,
    name varchar(256) NOT NULL,
    sort_priority int NOT NULL,
    PRIMARY KEY (id)
);



# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

insert into roles (roles_id, roles_name, roles_sort_priority) values
    (1, 'Designer',10),
    (2, 'Developer',20),
    (3, 'Recruit',30),
    (4, 'Team Lead',40),
    (5, 'Boss',50),
    (6, 'Mentor',60);

# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

create table peopleroles(
    id int auto_increment NOT NULL,
    people_id int NOT NULL,
    role_id int NOT NULL,
    date_assigned date default (current_date) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (people_id) references people (id),
    FOREIGN Key (role_id) references roles (id),
    UNIQUE (people_id, role_id)
);



# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

insert into peopleroles (people_id, role_id, date_assigned) values 
    (1,2,'2023-11-10'),
    (2,5,'2012-11-09'),
    (2,6,'2014-08-08'),
    (3,2,'2021-01-31'),
    (3,4,'2017-07-07'),
    (4,3,'2016-02-22'),
    (5,3,'2023-10-29'),
    (6,2,'2010-01-01'),
    (6,1,'2011-04-15'),
    (7,1,'2012-08-29'),
    (8,1,'2022-04-23'),
    (8,4,'2017-06-19'),
    (9,2,'2013-01-12'),
    (10,2,'2022-06-15'),
    (10,1,'2014-05-26');
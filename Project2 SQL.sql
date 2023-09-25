-- drop tables if exist

drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

-- create contacts table and set our primary key

CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (150)  NOT NULL,
    last_name varchar (150)  NOT NULL,
    email varchar (150)  NOT NULL,
	primary key (contact_id)
);

select * from contacts


CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL ,
	company_name VARCHAR(50) NOT NULL,
    description VARCHAR (150)  NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR (20) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(50) NOT NULL,
	currency VARCHAR (50) NOT NULL,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR (50) NOT NULL,
	subcategory_id VARCHAR (50) NOT NULL,
	primary key (cf_id),
	foreign key(contact_id) references contacts(contact_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id)
);

select * from campaign;



CREATE TABLE subcategory (
    subcategory_id varchar(50) NOT NULL,
    subcategory varchar (50)  NOT NULL,
	primary key (subcategory_id)
);

select * from subcategory



CREATE TABLE category (
    category_id varchar(50) NOT NULL,
    category varchar (50)  NOT NULL,
	primary key (category_id)
);

select * from category


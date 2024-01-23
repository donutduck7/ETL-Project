--Create contacts table
 
CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar(200) NOT NULL,
    last_name varchar(200) NOT NULL,
    email varchar(200) NOT NULL,
	primary key (contact_id)
);

--Create the category table

CREATE TABLE category (
    category_id varchar(200) NOT NULL,
    category varchar(200) NOT NULL,
	primary key(category_id)
);

--Create the subcategory table

CREATE TABLE subcategory (
    subcategory_id varchar(200) NOT NULL,
    subcategory varchar(200) NOT NULL,
	primary key(subcategory_id)
);

--Create the campaign table, making sure to propery identify primary and foreign keys

CREATE TABLE campaign (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(300) NOT NULL,
    description varchar(300) NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar(300) NOT NULL,
    backers_count int NOT NULL,
    country varchar(300) NOT NULL,
    currency varchar(300) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(300) NOT NULL,
    subcategory_id varchar(300) NOT NULL,
	primary key(cf_id),
	foreign key(contact_id) references contacts(contact_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id)
);

--Verify that each table was correctly created
SELECT * FROM contacts
SELECT * FROM category
SELECT * FROM subcategory
SELECT * FROM campaign
Create Table contacts(
   contact_id VARCHAR,
   first_name VARCHAR,
   last_name VARCHAR,
   email VARCHAR,
   PRIMARY KEY (contact_id)
);
Create Table campaign(
    cf_id int,
    contact_id VARCHAR,
    company_name VARCHAR,
    description VARCHAR,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR,
    backers_count int,
    country VARCHAR,
    currency VARCHAR,
    launched_date VARCHAR,
    end_date VARCHAR,
    staff_pick Boolean,
    spotlight Boolean,
    category_id VARCHAR,
    subcategory_id VARCHAR,
	FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY(category_id) REFERENCES category(category_id),
    FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);
Create Table category(
    category_id VARCHAR,
    category VARCHAR,
	PRIMARY KEY (category_id)
);
Create Table subcategory(
    subcategory_id VARCHAR,
    subcategory VARCHAR,
	PRIMARY KEY (subcategory_id)
);

SELECT*FROM contacts
SELECT*FROM campaign
SELECT*FROM category
SELECT*FROM subcategory
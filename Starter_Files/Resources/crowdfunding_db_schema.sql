-- creating table for contacts according to csv file
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

-- creating table for categories according to csv file
CREATE TABLE Categories (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(100)
);


-- creating table for subcategories according to csv file
CREATE TABLE Subcategories (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(100)
);



-- creating table for campaign according to csv file
CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(100),
    description TEXT,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR(100),
    backers_count INT,
    currency VARCHAR(10),
    country VARCHAR(100),
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategories(subcategory_id)
);

SELECT * FROM Campaign;

SELECT * FROM Categories;

SELECT * FROM Subcategories;

SELECT * FROM Contacts;

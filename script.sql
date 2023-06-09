CREATE TABLE Dealerships(
    dealership_id int NOT NULL,
    name varchar(50),
    address varchar(50),
    phone varchar(12),
    PRIMARY KEY(dealership_id)
);

CREATE TABLE Vehicles(
	vin int PRIMARY KEY,
    sold boolean,
    PRIMARY KEY(vin)
);

CREATE TABLE Inventory(
	dealership_id int,
    vin int,
    PRIMARY KEY(dealership_id)
);

CREATE TABLE Sales_Contract(
    dealership_id int,
    vin int
);

CREATE TABLE Lease_Contract(
    dealership_id int,
    vin int
);
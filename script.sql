CREATE TABLE Dealerships(
    dealership_id int NOT NULL,
    name varchar(50),
    address varchar(50),
    phone varchar(12),
    PRIMARY KEY(dealership_id)
);

CREATE TABLE Vehicles(
	vin int,
    sold boolean
);

CREATE TABLE Inventory(
	dealership_id int,
    vin int
);

CREATE TABLE Sales_Contract(
    dealership_id int,
    vin int,
    FOREIGN KEY(vin) REFERENCES Vehicles(vin)
);

CREATE TABLE Lease_Contract(
    dealership_id int,
    vin int,
    FOREIGN KEY(vin) REFERENCES Vehicles(vin)
);
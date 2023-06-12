CREATE TABLE Dealerships(
    dealership_id int NOT NULL,
    name varchar(50),
    address varchar(50),
    phone varchar(12),
    PRIMARY KEY(dealership_id)
);

CREATE TABLE Vehicles(
	vin varchar(255),
    sold boolean,
    make varchar(50),
    model varchar(50),
    vehicleType varchar(50),
    color varchar(50),
    PRIMARY KEY(vin)
);

CREATE TABLE Inventory(
	dealership_id int,
	vin varchar(255),
    FOREIGN KEY(dealership_id) REFERENCES Dealerships(dealership_id),
    FOREIGN KEY(vin) REFERENCES Vehicles(vin)

);

CREATE TABLE Sales_Contract(
    id int NOT NULL,
    customerName varchar(255),
    dateSigned varchar(225),
    vehicleToPurchase varchar(255),
    FOREIGN KEY(vehicleToPurchase) REFERENCES Vehicles(vin)
);

CREATE TABLE Lease_Contract(
    id int NOT NULL,
    customerName varchar(255),
    dateSigned varchar(225),
    vehicleToPurchase varchar(255),
    FOREIGN KEY(vehicleToPurchase) REFERENCES Vehicles(vin)
);

INSERT INTO Dealerships(dealership_id, name, address, phone) VALUES
    (1, 'ABC Motors', '123 Main St', '555-123-4567'),
    (2, 'XYZ Auto', '456 Elm Ave', '555-987-6543'),
    (3, 'Sunshine Cars', '789 Oak Blvd', '555-789-1234');

INSERT INTO Vehicles(vin, sold, make, model, vehicleType, color) VALUES
    ('1HGCM82633A12345', true, 'Honda', 'Accord', 'Sedan', 'Silver'),
    ('JM1BK32F581751234', false, 'Mazda', 'Mazda3', 'Hatchback', 'Red'),
    ('WBAKC6C56BC393876', true, 'BMW', '5 Series', 'Sedan', 'Black'),
    ('JTDKN3DU6A0009876', true, 'Toyota', 'Prius', 'Hatchback', 'Blue'),
    ('3VWD17AJ1FM282098', false, 'Volkswagen', 'Jetta Sedan', 'White'),
    ('5XYZB123456789012', false, 'Hyundai', 'Tucson', 'SUV', 'Gray'),
    ('SAJEA51C86WC12345', true, 'Jaguar', 'XJ', 'Sedan', 'Silver'),
    ('1FMJK1MT2KEF67890', false, 'Ford', 'Expedition', 'SUV', 'Black'),
    ('KLATF08Y1VB123456', true, 'Lexus', 'RX', 'SUV', 'White'),
    ('2C3CDXBG0LH234567', true, 'Dodge', 'Charger', 'Sedan', 'Red');

INSERT INTO Inventory(dealership_id, vin) VALUES
    (1, 1HGCM82633A12345),
    (1, JM1BK32F581751234),
    (2, WBAKC6C56BC393876),
    (2, JTDKN3DU6A0009876),
    (3, 3VWD17AJ1FM282098),
    (3, 5XYZB123456789012),
    (1, SAJEA51C86WC12345),
    (1, 1FMJK1MT2KEF67890),
    (2, KLATF08Y1VB123456),
    (2, 2C3CDXBG0LH234567);

INSERT INTO Sales_Contract (id, customerName, dateSigned, vehicleToPurchase) VALUES
   (1, 'John Smith', '2023-06-01', '1HGCM82633A123456'),
   (2, 'Emily Johnson', '2023-06-02', 'JM1BK32F581751234'),
   (3, 'Michael Brown', '2023-06-03', 'WBAKC6C56BC393876'),
   (4, 'Olivia Davis', '2023-06-04', 'JTDKN3DU6A0009876'),
   (5, 'William Afton', '2023-06-05', '3VWD17AJ1FM282098'),
   (6, 'Sophia Thompson', '2023-06-06', '5XYZB123456789012'),
   (7, 'Daniel Lee', '2023-06-07', 'SAJEA51C86WC12345'),
   (8, 'Ava Martin', '2023-06-08', '1FMJK1MT2KEF67890'),
   (9, 'James Clark', '2023-06-09', 'KLATF08Y1VB123456'),
   (10, 'Emma Garcia', '2023-06-10', '2C3CDXBG0LH234567');

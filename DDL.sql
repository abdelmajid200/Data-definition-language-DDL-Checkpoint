
CREATE TABLE Customer (
    Customer_id VARCHAR(20) PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Tel NUMBER
);


CREATE TABLE Product (
    Product_id VARCHAR(20) PRIMARY KEY,
    Product_Name VARCHAR(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);


CREATE TABLE Orders (
    Customer_id VARCHAR(20),
    Product_id VARCHAR(20),
    Quantity NUMBER,
    Total_Amount NUMBER,
    PRIMARY KEY (Customer_id, Product_id),
        FOREIGN KEY (Customer_id) 
        REFERENCES Customer(Customer_id),
        FOREIGN KEY (Product_id) 
        REFERENCES Product(Product_id)
);


ALTER TABLE Product
ADD Category VARCHAR(20);


ALTER TABLE Orders
ADD OrderDate DATE DEFAULT SYSDATE;



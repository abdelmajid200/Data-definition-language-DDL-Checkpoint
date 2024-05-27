 Create Customer Table
CREATE TABLE Customer (
    Customer_id VARCHAR(20) PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Tel NUMBER
);

 Create Product Table
CREATE TABLE Product (
    Product_id VARCHAR(20) PRIMARY KEY,
    Product_Name VARCHAR(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

 Create Orders Table
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

 Add Category Column to Product Table
ALTER TABLE Product
ADD Category VARCHAR(20);

 Add OrderDate Column to Orders Table with Default Value
ALTER TABLE Orders
ADD OrderDate DATE DEFAULT SYSDATE;



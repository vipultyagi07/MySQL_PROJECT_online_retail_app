
CREATE TABLE online_retail_app.Users
(
    userid INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(100),
	email VARCHAR(100),
    phoneNumber VARCHAR(20),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(userid),
    UNIQUE(userid)
);

CREATE TABLE online_retail_app.Buyer
(
    buyer_id BIGINT NOT NULL AUTO_INCREMENT,
    userid INT NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(buyer_id),
    UNIQUE(buyer_id),
    FOREIGN KEY(userid) REFERENCES Users(userid)
);

CREATE TABLE online_retail_app.Seller
(
    seller_id BIGINT NOT NULL AUTO_INCREMENT,
    userid INT NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(seller_id),
    UNIQUE(seller_id),
    FOREIGN KEY(userid) REFERENCES Users(userid)
);

CREATE TABLE online_retail_app.BankCard
(
    bankcard_id BIGINT NOT NULL AUTO_INCREMENT,
    cardNumber VARCHAR(25) NOT NULL,
    expiryDate DATE,
    bank VARCHAR(20),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(bankcard_id),
    UNIQUE(bankcard_id)
);

CREATE TABLE online_retail_app.CreditCard
(
    creditcard_id BIGINT NOT NULL AUTO_INCREMENT,
    cardNumber VARCHAR(25) NOT NULL,
    userid INT NOT NULL,
    organization VARCHAR(20),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(creditcard_id),
    UNIQUE(creditcard_id),
    FOREIGN KEY(creditcard_id) REFERENCES BankCard(bankcard_id),
    FOREIGN KEY(userid) REFERENCES Users(userid)
);

CREATE TABLE online_retail_app.DebitCard
(
    debitcard_id BIGINT NOT NULL AUTO_INCREMENT,
    cardNumber VARCHAR(25) NOT NULL,
    userid INT NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(debitcard_id),
    UNIQUE(debitcard_id),
    FOREIGN KEY(debitcard_id) REFERENCES BankCard(bankcard_id),
    FOREIGN KEY(userid) REFERENCES Users(userid)
);

CREATE TABLE online_retail_app.Address
(
    address_id BIGINT NOT NULL AUTO_INCREMENT,
    addrid INT NOT NULL,
    userid INT NOT NULL,
    name VARCHAR(50),
    contactPhoneNumber VARCHAR(20),
    province VARCHAR(100),
    city VARCHAR(100),
    streetaddr VARCHAR(100),
    postCode VARCHAR(12),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(address_id),
    UNIQUE(address_id),
    FOREIGN KEY(userid) REFERENCES Users(userid)
);

CREATE TABLE online_retail_app.Store
(
    sid INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    province VARCHAR(20),
    city VARCHAR(20),
    streetaddr VARCHAR(20),
    customerGrade INT,
    startTime DATE,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(sid),
    UNIQUE(sid)
);

CREATE TABLE online_retail_app.Brand
(
    brand_id BIGINT NOT NULL AUTO_INCREMENT,
    brandName VARCHAR(20) NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(brand_id),
    UNIQUE(brand_id)
);

CREATE TABLE online_retail_app.Product
(
    product_id BIGINT NOT NULL AUTO_INCREMENT,
    sid INT NOT NULL,
    brand_id BIGINT NOT NULL,
    name VARCHAR(100),
    type VARCHAR(50),
    modelNumber VARCHAR(50),
    color VARCHAR(50),
    amount INT,
    price INT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(product_id),
    UNIQUE(product_id),
    FOREIGN KEY(sid) REFERENCES Store(sid),
    FOREIGN KEY(brand_id) REFERENCES Brand(brand_id)
);

CREATE TABLE online_retail_app.OrderItem
(
    orderitem_id BIGINT NOT NULL AUTO_INCREMENT,
    itemid INT NOT NULL,
    product_id BIGINT NOT NULL,
    price INT,
    creationTime DATE,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(orderitem_id),
    UNIQUE(orderitem_id),
    FOREIGN KEY(product_id) REFERENCES Product(product_id)
);

CREATE TABLE online_retail_app.Orders
(
    order_id BIGINT NOT NULL AUTO_INCREMENT,
    orderNumber INT NOT NULL,
    paymentState VARCHAR(12),
    creationTime DATE,
    totalAmount INT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(order_id),
    UNIQUE(order_id)
);

CREATE TABLE online_retail_app.Comments
(
    comment_id BIGINT NOT NULL AUTO_INCREMENT,
    creationTime DATE NOT NULL,
    buyer_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    grade FLOAT,
    content VARCHAR(500),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(comment_id),
    UNIQUE(comment_id),
    FOREIGN KEY(buyer_id) REFERENCES Buyer(buyer_id),
    FOREIGN KEY(product_id) REFERENCES Product(product_id)
);

CREATE TABLE online_retail_app.ServicePoint
(
    servicepoint_id BIGINT NOT NULL AUTO_INCREMENT,
    streetaddr VARCHAR(40),
    city VARCHAR(30),
    province VARCHAR(20),
    startTime VARCHAR(20),
    endTime VARCHAR(20),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(servicepoint_id),
    UNIQUE(servicepoint_id)
);

CREATE TABLE online_retail_app.Save_to_Shopping_Cart
(
    cart_id BIGINT NOT NULL AUTO_INCREMENT,
    buyer_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    addTime DATE,
    quantity INT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(cart_id),
    UNIQUE(cart_id),
    FOREIGN KEY(buyer_id) REFERENCES Buyer(buyer_id),
    FOREIGN KEY(product_id) REFERENCES Product(product_id)
);

CREATE TABLE online_retail_app.Contain
(
    contain_id BIGINT NOT NULL AUTO_INCREMENT,
    order_id BIGINT NOT NULL,
    item_id BIGINT NOT NULL,
    quantity INT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(contain_id),
    UNIQUE(contain_id),
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    FOREIGN KEY(item_id) REFERENCES OrderItem(orderitem_id)
);

CREATE TABLE online_retail_app.Payment
(
    payment_id BIGINT NOT NULL AUTO_INCREMENT,
    order_id BIGINT NOT NULL,
    creditcard_id BIGINT NOT NULL,
    payTime DATE,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(payment_id),
    UNIQUE(payment_id),
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    FOREIGN KEY(creditcard_id) REFERENCES CreditCard(creditcard_id)
);

CREATE TABLE online_retail_app.Deliver_To
(
    deliver_id BIGINT NOT NULL AUTO_INCREMENT,
    address_id BIGINT NOT NULL,
    order_id BIGINT NOT NULL,
    TimeDelivered DATE,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(deliver_id),
    UNIQUE(deliver_id),
    FOREIGN KEY(address_id) REFERENCES Address(address_id),
    FOREIGN KEY(order_id) REFERENCES Orders(order_id)
);

CREATE TABLE online_retail_app.Manage
(
    manage_id BIGINT NOT NULL AUTO_INCREMENT,
    userid INT NOT NULL,
    sid INT NOT NULL,
    SetUpTime DATE,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(manage_id),
    UNIQUE(manage_id),
    FOREIGN KEY(userid) REFERENCES Seller(userid),
    FOREIGN KEY(sid) REFERENCES Store(sid)
);

CREATE TABLE online_retail_app.After_Sales_Service_At
(
    aftersales_id BIGINT NOT NULL AUTO_INCREMENT,
    brand_id BIGINT NOT NULL,
    servicepoint_id BIGINT NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(100),
    last_modified_by VARCHAR(100),
    is_active BOOLEAN DEFAULT TRUE,
    PRIMARY KEY(aftersales_id),
    UNIQUE(aftersales_id),
    FOREIGN KEY(brand_id) REFERENCES Brand(brand_id),
    FOREIGN KEY(servicepoint_id) REFERENCES ServicePoint(servicepoint_id)
);
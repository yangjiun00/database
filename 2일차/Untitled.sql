-- create database fishbread_db;
-- use fishbread_db;
CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT, -- 사용자 id
name VARCHAR(255) NOT NULL, -- 사용자 이름
age INT NOT NULL, -- 나이
email VARCHAR(100) UNIQUE, -- 이메일
is_business VARCHAR(10) DEFAULT False
);


CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT, -- 주문의 고유 id
user_id INT , -- 주문한 사람의 id
order_date DATE, -- 주문 날짜
amount DECIMAL(10,2), -- 주문금액
FOREIGN KEY(user_id) references users(user_id)
);

CREATE TABLE inventory(
item_id INT PRIMARY KEY AUTO_INCREMENT, -- 재고 고유ID
item_name VARCHAR(255) NOT NULL, -- 재고 항목
quantity INT NOT NULL -- 재고수량 
);

CREATE TABLE sales(
sale_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT, 
item_id INT, 
quantity_sold INT, -- 판매 수량
FOREIGN KEY(order_id) REFERENCES orders(order_id),
FOREIGN KEY(item_id) REFERENCES inventory(item_id)
);

 CREATE TABLE daily_sales(
 date DATE PRIMARY KEY, -- 날짜
 total_sales DECIMAL(10,2) NOT NULL -- 총 매출
 )
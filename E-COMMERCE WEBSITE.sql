--- create table for category
create table category(
cat_id int primary key auto_increment,
cat_name varchar(50) not null);
--- create table for products
create table products(
prod_id int primary key auto_increment,
pname varchar(50) not null default "oneplus",
prod_desc varchar(50),
cat_id int,
foreign key(cat_id) references category(cat_id));
--- create table for supplier
create table supplier(
sup_id int primary key auto_increment,
sup_name varchar(50) not null,
sup_city varchar(10) default "pune",
sup_phone varchar(10) not null);
--- create table for supp-prod
create table supp_prod(
catalog_id int primary key auto_increment,
prod_id int,
sup_id int,
price int check(price>100),
foreign key(prod_id) references products(prod_id),
foreign key(sup_id) references supplier(sup_id));
--- create table for customer
create table customer(
cust_id int primary key,
cname varchar(20) not null,
cust_phone varchar(10),
cust_city varchar(10),
cust_gender char);
--- create table for orders
create table orders(
order_id int primary key auto_increment,
order_amt int,
order_date date,
cust_id int,
catalog_id int,
foreign key(cust_id) references customer(cust_id),
foreign key(catalog_id) references supp_prod(catalog_id));
--- create table for rating
create table rating(
rat_id int primary key auto_increment,
order_id int,
stars int check(stars<=5),
foreign key(order_id) references orders(order_id));
--- Insert values to table supplier
INSERT INTO `dbms`.`supplier` (`sup_id`, `sup_name`, `sup_city`, `sup_phone`) VALUES ('1', 'RAJESH RETAILS', 'DELHI', '1234567890');
INSERT INTO `dbms`.`supplier` (`sup_id`, `sup_name`, `sup_city`, `sup_phone`) VALUES ('2', 'APPARIO LTD', 'MUMBAI', '2345678910');
INSERT INTO `dbms`.`supplier` (`sup_id`, `sup_name`, `sup_city`, `sup_phone`) VALUES ('3', 'KNOME PRODUCTS', 'BANGLORE', '3456789012');
INSERT INTO `dbms`.`supplier` (`sup_id`, `sup_name`, `sup_city`, `sup_phone`) VALUES ('4', 'BANSAL RETAILS', 'KOCHI', '5678912345');
INSERT INTO `dbms`.`supplier` (`sup_id`, `sup_name`, `sup_city`, `sup_phone`) VALUES ('5', 'MITTAL LTD', 'LUCKNOW', '7898456532');
--- Insert values to table customer
INSERT INTO `dbms`.`customer` (`cust_id`, `cname`, `cust_phone`, `cust_city`, `cust_gender`) VALUES ('1', 'AAKASH', '9999999999', 'DELHI', 'M');
INSERT INTO `dbms`.`customer` (`cust_id`, `cname`, `cust_phone`, `cust_city`, `cust_gender`) VALUES ('2', 'AMAN', '9785467854', 'NOIDA', 'M');
INSERT INTO `dbms`.`customer` (`cust_id`, `cname`, `cust_phone`, `cust_city`, `cust_gender`) VALUES ('3', 'NEHA', '9999999999', 'MUMBAI', 'F');
INSERT INTO `dbms`.`customer` (`cust_id`, `cname`, `cust_phone`, `cust_city`, `cust_gender`) VALUES ('4', 'MEGHA', '9995643789', 'KOLKATA', 'F');
INSERT INTO `dbms`.`customer` (`cust_id`, `cname`, `cust_phone`, `cust_city`, `cust_gender`) VALUES ('5', 'PULKIT', '7896543278', 'LUCKNOW', 'M');
--- Insert values to table category
INSERT INTO `dbms`.`category` (`cat_id`, `cat_name`) VALUES ('1', 'BOOKS');
INSERT INTO `dbms`.`category` (`cat_id`, `cat_name`) VALUES ('2', 'GAMES');
INSERT INTO `dbms`.`category` (`cat_id`, `cat_name`) VALUES ('3', 'GROCERIES');
INSERT INTO `dbms`.`category` (`cat_id`, `cat_name`) VALUES ('4', 'ELECTRONICS');
INSERT INTO `dbms`.`category` (`cat_id`, `cat_name`) VALUES ('5', 'CLOTHES');
--- Insert values to table products
INSERT INTO `dbms`.`products` (`prod_id`, `pname`, `prod_desc`, `cat_id`) VALUES ('1', 'GTA V', 'WINDOWS 7 ', '2');
INSERT INTO `dbms`.`products` (`prod_id`, `pname`, `prod_desc`, `cat_id`) VALUES ('2', 'TSHIRT', 'SIZE L ', '5');
INSERT INTO `dbms`.`products` (`prod_id`, `pname`, `prod_desc`, `cat_id`) VALUES ('3', 'EROG LAPTOP', 'WINDOWS 10', '3');
INSERT INTO `dbms`.`products` (`prod_id`, `pname`, `prod_desc`, `cat_id`) VALUES ('4', 'OATS', 'HIGHLY NUTRIOUS', '1');
INSERT INTO `dbms`.`products` (`prod_id`, `pname`, `prod_desc`, `cat_id`) VALUES ('5', 'MILK', '1L TONED MILK', '6');
INSERT INTO `dbms`.`products` (`prod_id`, `pname`, `prod_desc`, `cat_id`) VALUES ('6 ', 'HARRY PORTER', 'BEST COLLECTION', '5');
--- Insert values to table supp_prod
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('1', '1', '2', '1500');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('2', '3', '5', '30000');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('3', '5', '1', '300');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('4', '2', '3', '2500');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('5', '4', '1', '1000');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('6', '12', '2', '780');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('7', '12', '4', '789');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('8', '3', '1', '31000');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('9', '1', '5', '1450');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('10', '4', '2', '999');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('11', '7', '3', '549');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('12', '7', '4', '529');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('13', '6', '2', '105');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('14', '6', '1', '99');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('15', '2', '5', '2999');
INSERT INTO `dbms`.`supp_prod` (`catalog_id`, `prod_id`, `sup_id`, `price`) VALUES ('16', '5', '2', '2999');
--- Insert values to table orders
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('101', '1500', '2021-10-06', '2', '1');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('102', '1000', '2021-10-12', '3', '5');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('103', '30000', '2021-09-16', '5', '2');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('104', '1500', '2021-10-05', '1', '1');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('105', '3000', '2021-08-16', '4', '3');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('106', '1450', '2021-08-18', '1', '9');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('107', '789', '2021-09-01', '3', '7');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('108', '780', '2021-09-07', '5', '6');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('109', '3000', '2021-01-10', '5', '3');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('110', '2500', '2021-09-10', '2', '4');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('111', '1000', '2021-09-15', '4', '5');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('112', '789', '2021-09-16', '4', '7');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('113', '31000', '2021-09-16', '1', '8');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('114', '1000', '2021-09-16', '3', '5');
INSERT INTO `dbms`.`orders` (`order_id`, `order_amt`, `order_date`, `cust_id`, `catalog_id`) VALUES ('115', '3000', '2021-09-10', '5', '3');
--- Insert values to table rating
INSERT INTO `dbms`.`rating` (`rat_id`, `order_id`, `stars`) VALUES ('1', '101', '4');
INSERT INTO `dbms`.`rating` (`rat_id`, `order_id`, `stars`) VALUES ('2', '102', '3');
INSERT INTO `dbms`.`rating` (`rat_id`, `order_id`, `stars`) VALUES ('3', '103', '1');
INSERT INTO `dbms`.`rating` (`rat_id`, `order_id`, `stars`) VALUES ('4', '104', '2');
INSERT INTO `dbms`.`rating` (`rat_id`, `order_id`, `stars`) VALUES ('5', '105', '4');
3) Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
select cust_gender, count(*) from customer where cust_id in (select cust_id from `supp_prod` where price>=3000) group by cust_gender;
4)	Display all the orders along with product name ordered by a customer having Customer_Id=2
select pname from products where prod_id in (select prod_id from supp_prod where price in (select price from `orders` where cust_id=2));
5)	Display the Supplier details who can supply more than one product.
select * from supplier where sup_id in (select sup_id from supp_prod group by sup_id having count(sup_id)>1);
6)	Find the least expensive product from each category and print the table with category id, name, product name and price of the product
select cat.cat_id, cat.cat_name, p.pname, sp.price from category as cat
inner join products as p on cat.cat_id=p.cat_id
inner join supp_prod as sp on sp.prod_id=p.prod_id
group by cat.cat_name having min(sp.price);
7)	Display the Id and Name of the Product ordered after “2021-10-05”.
select prod_id, pname from products where prod_id in (select prod_id from supp_prod where price in (select order_amt from `orders` where order_date > '2021-10-05'));
8)	Display customer name and gender whose names start or end with character 'A'.
select cname, cust_gender from customer where cname like "A%";
9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.
select `orders`.order_amt, avg(rating.stars) as rating, case 
when avg(rating.stars)=5 then 'Excellent Service'
when avg(rating.stars)>4 then 'Good Service'
when avg(rating.stars)>2 then 'Average Service'
else 'Poor Service' end as Type_of_Service from `orders` 
inner join rating where `orders`.order_id=rating.order_id group by `orders`.order_amt;


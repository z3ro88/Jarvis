-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `jarvis`;


CREATE SCHEMA `jarvis`;
ALTER DATABASE `jarvis`
CHARACTER SET utf8
COLLATE utf8_unicode_ci;

USE `jarvis` ;

-- -----------------------------------------------------
-- Table `jarvis`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jarvis`.`product_category` (
  `id` integer(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `jarvis`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jarvis`.`order_products` (
`id` int(20) NOT NULL AUTO_INCREMENT,
`name` varchar(255) NOT NULL,  
`price` decimal(13,2) NOT NULL,     
`category` varchar(30) NOT NULL,
`image_Url` varchar(500) DEFAULT NULL,
`menu_description` varchar(500),
`date_created` DATETIME(6) DEFAULT NULL,
`category_id` int (20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` 
  FOREIGN KEY (`category_id`) 
  REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Sample Data
-- -----------------------------------------------------

INSERT INTO order_product VALUES(1001,'french toast',3.00,'breakfast','assets/images/breakfast/french-toast-1589827448.jpg',
'Sourdough bread dipped in a rich egg batter, served golden brown, lightly dusted with powdered sugar and served with whipped butter and hot syrup.', NOW(),1);
INSERT INTO order_product VALUES(1002,'blueberry and apple oats',3.50,'breakfast','assets/images/breakfast/blueberry-apple-oatmeal-image.jpg',
' This oatmeal is loaded with lots of real fruit, a pinch of sugar, and endless amounts of superfood goodness for the mind and body.', NOW(),1);
INSERT INTO order_product VALUES(1003,'chocolatechip pancakes',4.00,'breakfast','assets/images/breakfast/Chocolate-Chip-Pancakes-Hero-1-scaled.jpg',
'Ghirardelli® chocolate chips cooked inside buttermilk silver dollar pancakes. Pair it with any side you want.', NOW(),1);
INSERT INTO order_product VALUES(1004,'cheeses omelette',5.00,'breakfast','assets/images/breakfast/cheese-omelette.jpg',
'Cheddar cheese melting into a flufproduct_categoryfy two-egg omelette.', NOW(),1);
INSERT INTO order_product VALUES(1005,'bbq burger',10.00,'lunch','assets/images/lunch/bbqburger.jpg',
'Beef patties, lettuce, tomato, cheddar cheese, hickory-smoked bacon, onion rings, and BBQ sauce.', NOW(),2);
INSERT INTO order_product VALUES(1006,'chicken alfredo',8.00,'lunch','assets/images/lunch/chicken-alfredo.jpg',
'Creamy alfredo sauce made from scratch with ingredients like parmesan, cream, garlic and butter, served with fettuccine pasta and topped with sliced grilled chicken.', NOW(),2);
INSERT INTO order_product VALUES(1007,'creamy lemon chicken', 9.50,'lunch','assets/images/lunch/creamy-lemon-chicken-garlic-pasta-2-updated-1.jpg',
'The flavorful combination of the seasoned chicken pairs perfectly with the lemon cream sauce.', NOW(),2);
INSERT INTO order_product VALUES(1008,'loaded  chilli cheese nachos',12.50,'lunch','assets/images/lunch/chili-cheese-nacho-final.jpg',
'a hearty, medium-spicy chili con carne, made with simmered homestyle beef, diced tomatoes, dark red kidney beans, peppers, onion and celery, along with a secret blend of peppery spices, topped with sour cream, cheese, and onions.', NOW(),2);
INSERT INTO order_product VALUES(1009,'butternut squash soup',6.00,'lunch','assets/images/lunch/SFS_Roasted_Butternut_Squash_Soup_026_lyiyiw.jpg',
'A rich blend of butternut squash and pumpkin simmered in vegetable broth with select ingredients, including honey, apple juice, cinnamon and a hint of curry, and finished with sweet cream and topped with roasted and salted pumpkin seeds.', NOW(),3);
INSERT INTO order_product VALUES(1010,'cobb salad',7.50,'lunch','assets/images/lunch/cobb-salad-featured-2022.jpg',
'Chicken raised without antibiotics, arugula, romaine, baby kale and red leaf blend, grape tomatoes and pickled red onions tossed in freshly made Green Goddess dressing and topped with fresh avocado, Applewood-smoked bacon and cage-free hard-boiled egg.', NOW(),3);
INSERT INTO order_product VALUES(1011,'kung pao pork',12.50,'dinner','assets/images/dinner/Kung-Pao-Pork.jpg',
'Kung Pao pork has a myriad variety of strong flavors. It is a combination of sweet, salty, and savory flavors. Sometimes, it requires the heat of the Sichuan pepper. It is a very delicious dish from Chinese cuisine. It is usually served with rice to elevate the taste of Kung Pao pork.',
 NOW(),3);
INSERT INTO order_product VALUES(1012,'bacon cheeseburger',14.00,'dinner','assets/images/dinner/bacon-cheeseburger.jpg',
'Go old school with our handcrafted all-beef patty topped with two slices of American Cheese and two strips of Applewood-smoked bacon. Served with lettuce, tomato, onion and pickles on a Brioche bun. Served with classic fries.', NOW(),3);
INSERT INTO order_product VALUES(1013,'cheesy mac bake',13.00,'dinner','assets/images/dinner/Mac-and-Cheese.jpg',
'This baked mac and cheese recipe is our Platonic ideal of the comfort food classic: It is creamy and deeply cheesy, has a crunchy crust, and is impressive.', NOW(),3);

INSERT INTO money (food, store, amount) VALUES ('burger', 'mcdonalds', '4');
INSERT INTO money (food, store, amount) VALUES ('fries', 'The Iron Roost', '2');
INSERT INTO money (food, store, amount) VALUES ('sushi', 'Mr. Wasabi', '9'); 
INSERT INTO money (food, store, amount) VALUES ('milkshake', 'Burger King', '3'); 
INSERT INTO money (food, store, amount) VALUES ('salad', 'Just Salad', '8'); 
INSERT INTO money (food, store, amount) VALUES ('wrap', 'Chopped', '7'); 
INSERT INTO money (food, store, amount) VALUES ('pizza', '2 Bros', '2'); 
INSERT INTO money (food, store, amount) VALUES ('mac n cheese', 'Panera', '11'); 
INSERT INTO money (food, store, amount) VALUES ('ice cream', 'The Ice Cream Shoppe', '3'); 
INSERT INTO money (food, store, amount) VALUES ('pasta', 'Eatly', '15'); 
INSERT INTO money (food, store, amount) VALUES ('chipotle', 'Chipotle', '9'); 
INSERT INTO money (food, store, amount) VALUES ('sandwich', 'Penny Farthing', '12');  


INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('burger', '1', '5', 'yes', 'no', 'no');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('fries', '2', '4', 'no', 'no', 'yes');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('sushi', '3', '8', 'yes', 'yes', 'yes');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('milkshake', '3', '5', 'no', 'no', 'no');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('salad', '1', '9', 'yes', 'yes', 'yes');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('wrap', '2', '6', 'yes', 'no', 'yes');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('pizza', '2', '2', 'no', 'yes', 'no');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('mac n cheese', '1', '7', 'yes', 'yes', 'yes');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('ice cream', '1', '4', 'no', 'no', 'no');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('pasta', '2', '9', 'yes', 'yes', 'yes');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('chipotle', '1', '7', 'yes', 'yes', 'yes');
INSERT INTO food (food_name, quantity, preparation, presentation, fresh, full, drink) VALUES ('sandwich', '1', '4', 'yes', 'yes', 'yes');

INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('mcdonalds', '3', 'sit-down', '4', '5', 'alone');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('The Iron Roost', '19', 'sit-down', '11', '3', 'with people');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('Mr. Wasabi', '15', 'sit-down', '7', '8', 'with people');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('Burger King', '2', 'to-go', '3', '7', 'alone');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('Just Salad', '4', 'sit-down', '6', '5', 'alone');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('Chopped', '7', 'sit-down', '4', '2', 'alone');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('2 Bros', '1', 'to-go', '4', '8', 'alone');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('Panera', '5', 'to-go', '6', '3', 'with people');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('The Ice Cream Shoppe', '1', 'to-go', '12', '6', 'with people');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('Eatly', '10', 'sit-down', '9', '3', 'with people');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('Chipotle', '2', 'to-go', '5', '9', 'alone');
INSERT INTO store (store_name, proximity, store_type, wait, size, staff, status) VALUES ('Penny Farthing', '6', 'sit-down', '13', '6', 'with people');

INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('N/A', '0', '0');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('mom', 'happy', '7');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('friend', 'content', '8');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('N/A', '0', '0');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('N/A', '0', '0');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('N/A', '0', '0');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('N/A', '0', '0');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('friend', 'excited', '9');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('mom', 'sad', '3');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('friend', 'ecstatic', '8');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('N/A', '0', '0');
INSERT INTO person (relationship, emotion, their_enjoyment) VALUES ('brother', 'annoyed', '2');

INSERT INTO rating (food, store, status, amount rating) VALUES ('burger', 'mcdonalds' 'alone', '3');
INSERT INTO rating (food, store, status, amount rating) VALUES ('fries', 'The Iron Roost' 'with people', '5');
INSERT INTO rating (food, store, status, amount rating) VALUES ('sushi', 'Mr. Wasabi' 'with people', '7');
INSERT INTO rating (food, store, status, amount rating) VALUES ('milkshake', 'Burger King' 'alone', '9');
INSERT INTO rating (food, store, status, amount rating) VALUES ('salad', 'Just Salad' 'alone', '4');
INSERT INTO rating (food, store, status, amount rating) VALUES ('wrap', 'Chopped' 'alone', '2');
INSERT INTO rating (food, store, status, amount rating) VALUES ('pizza', '2 Bros' 'alone', '7');
INSERT INTO rating (food, store, status, amount rating) VALUES ('mac n cheese', 'Panera' 'with people', '1');
INSERT INTO rating (food, store, status, amount rating) VALUES ('ice cream', 'The Ice Cream Shoppe' 'with people', '5');
INSERT INTO rating (food, store, status, amount rating) VALUES ('pasta', 'Eatly' 'with people', '6');
INSERT INTO rating (food, store, status, amount rating) VALUES ('chipotle', 'Chipotle' 'alone', '9');
INSERT INTO rating (food, store, status, amount rating) VALUES ('sandwich', 'Penny Farthing' 'with people', '4');
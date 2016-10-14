CREATE TABLE amount (food VARCHAR(255) NOT NULL, store VARCHAR(255) NOT NULL, amount VARCHAR(255) NOT NULL, id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id) );

-- food = what was the food
-- store = where it was purchased?
-- amount = how much was it
-- id = key id

CREATE TABLE  food (food VARCHAR(255) NOT NULL, quantity INT(11) NOT NULL, preparation TINYINT(1) NOT NULL, presentation INT(11) NOT NULL, fresh TINYINT(1) NOT NULL, full INT(11) NOT NULL, drink TINYINT(1) NOT NULL, id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id) );
 
-- food = what the food was
-- quantity = how many did you get
-- preparation = prepared or did you have to cook it
-- presentation = scale of 1 to 5
-- fresh = was it fresh
-- full = were you full (Y/N)?
-- drink = did you get a drink with it (Y/N)?
-- id = id key


CREATE TABLE store(store VARCHAR(255) NOT NULL, proximity INT(11) NOT NULL, store_type VARCHAR(255) NOT NULL, wait INT(11)  NOT NULL, size VARCHAR(255) NOT NULL, staff INT(11) NOT NULL,  status TINYINT(1) NOT NULL, id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id));

-- store = what was the store called
-- proximity = how far was it from you
-- store_type = was it a sit-down or togo/ or grocery store
-- wait = how long did you wait
-- size = how big was the establishment
-- staff = were the workers nice
-- status = were you alone?
-- id = id key

CREATE TABLE person(relationship VARCHAR(255) NOT NULL, emotion VARCHAR(255) NOT NULL, their_enjoyment TINYINT(1) NOT NULL, id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id));

-- relationship = how close were they to you?
-- emotion = were you happy with them?
-- their_enjoyment = did they enjoy the food?
-- id = key id

CREATE TABLE rating(food VARCHAR (255) NOT NULL, store VARCHAR(255) NOT NULL, status VARCHAR(255) NOT NULL, amount INT(11) NOT NULL rating INT(11) NOT NULL, id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id));

-- food = what did you get
-- store = where you ate
-- status = were you alone?
-- amount = how much you spent
-- rating = scale of 1 to 10
-- id = key id






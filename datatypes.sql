DROP TABLE dogs;

CREATE TABLE dogs (name CHAR(5), breed VARCHAR(10));

INSERT INTO dogs (name, breed) VALUES('bob', 'beagle');
INSERT INTO dogs (name, breed) VALUES('doug', 'corgi');
INSERT INTO dogs (name, breed) VALUES('spot', 'dalmation');
INSERT INTO dogs (name, breed) VALUES('spike', 'bulldog');
INSERT INTO dogs (name, breed) VALUES('rex', 'terrier');
INSERT INTO dogs (name, breed) VALUES('roan', 'huskey');

CREATE TABLE items (price DECIMAL(5,2));

INSERT INTO items(price) VALUES(7);
INSERT INTO items(price) VALUES(789431);
INSERT INTO items(price) VALUES(34.88);
INSERT INTO items(price) VALUES(298.9999);
INSERT INTO items(price) VALUES(1.9999);

 
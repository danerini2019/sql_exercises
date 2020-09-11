USE test_db;

DROP TABLE cats;

CREATE TABLE cats (
	cat_id INT NOT NULL auto_increment,
    name VARCHAR(30),
    age INT,
    PRIMARY KEY (cat_id)
    ); 

INSERT INTO cats(cat_id, name, age)
VALUES(1, 'Charlie', 17);

INSERT INTO cats(name, age)
VALUES('Ava', 21);

SELECT * FROM cats;
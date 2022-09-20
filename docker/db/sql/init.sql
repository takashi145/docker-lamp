CREATE TABLE IF NOT EXISTS test_table (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  body TEXT
);

INSERT INTO test_table VALUES(NULL, "test1", "testtest"),(NULL, "test", "testtest");

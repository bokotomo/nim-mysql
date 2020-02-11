-- マイグレーションはめんどいからやってない
DROP DATABASE IF EXISTS dev;
CREATE DATABASE dev;
USE dev;

CREATE TABLE test (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    category INT(11) NOT NULL,
    value INT(11) NOT NULL,
    INDEX idx_category(category)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
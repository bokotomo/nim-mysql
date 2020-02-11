run:
	nimble build && ./bin/main
test:
	nimble test
db_init:
	mysql -uroot -pdev -hdb < ./infrastructure/db/init.sql
# nim-mysql
nimでmysqlの試し。

## 動かし方
```
cd docker
docker-compose up -d
docker-compose exec app bash
```

・appって名前のdocker imageがすでにある場合は、ビルドもすると動く。
```
docker-compose build
docker-compose up -d
docker-compose exec app bash
```
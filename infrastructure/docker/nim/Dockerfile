FROM nimlang/nim:latest

WORKDIR /app
RUN apt-get update && apt-get install -y make libmariadbclient-dev
# マイグレーション用
RUN apt-get install -y mysql-client
# その他
RUN apt-get install -y vim

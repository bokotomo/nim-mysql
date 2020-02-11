import db_mysql, random

proc insert(db: DbConn) =
    db.exec(sql"START TRANSACTION")
    let size = 100*100*30
    for i in 0..size:
        db.exec(
            sql"insert into test(category, value) values(?,?)",
            rand(10000),
            i,
        )
        if i mod 1000 == 0:
          echo i
    db.exec(sql"COMMIT")

proc select(db: DbConn) =
    for row in db.rows(sql"select sum(value) from test where category=1 group by category;"):
        echo row[0]

proc main() =
    randomize()
    # 日本語にすると思ったよりわかりやすい気がする。
    let データベースコネクション = open("db", "root", "dev", "dev")
    insert(データベースコネクション)
    select(データベースコネクション)
    データベースコネクション.close()

main()

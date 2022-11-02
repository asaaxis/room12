
テーブル名：users

| No  | カラム名        | データ型 | Not NULL | key   |
|:---:| --------------- | -------- | -------- | ----- |
|  1  | id              | integer  | ○        | ⚪︎PK |
|  2  | name            | string   | ○        |       |
|  3  | email           | string   | ○        |       |
|  4  | password_digest | string   | ○        |       |


テーブル名：blogs


| No  | カラム名 | データ型 | Not NULL | key   |
|:---:| -------- | -------- | -------- | ----- |
|  1  | id       | integer  | ○        | ⚪︎PK |
|  2  | title    | string   | ○        |       |
|  3  | content  | text     | ○        |       |
|  4  | user_id  | integer  | ○        | ⚪︎FK |
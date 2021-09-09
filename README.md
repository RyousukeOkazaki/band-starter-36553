# README

## usersテーブル

| Column              | Type    | Options                   |
| ------------------- | ------- | ------------------------- |
| nickname            | string  | null: false               |
| date_of_birth       | date    | null: false               |
| introduction        | text    | null: false               |
| how_long_play       | integer | null: false               |
| how_long_blank      | integer | null: false               |
| how_long_band       | integer | null: false               |
| how_many_band       | integer | null: false               |
| how_many_conpose    | integer | null: false               |
| favorite_artist     | string  | null: false               |
| URL                 | string  | null: false               |
| career              | text    | null: false               |
| encrypted_password  | string  | null: false, unique: true |
| sex_id              | integer | null: false               |
| character_id        | integer | null: false               |
| what_play_id        | string  | null: false               |
| genre_id            | integer | null: false               |
| prefecture_id       | integer | null: false               |
| active_day_id       | integer | null: false               |
| skill_id            | integer | null: false               |
| leader_or_member_id | integer | null: false               |



### Association
- has_one :as_leader
- has_one :as_member
- has_many :posts
- has_many :user_rooms
- has_many :rooms, through: :user_rooms
- has_many :messages



## as_leadersテーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| what_band         | text       | null: false                    |
| why_band          | text       | null: false                    |
| ideal_member      | text       | null: false                    |
| how_long_leader   | integer    | null: false                    |
| leader_ship_id    | integer    | null: false                    |
| do_genre_id       | integer    | null: false                    |
| order_style_id    | integer    | null: false                    |
| tune_style_id     | integer    | null: false                    |
| belong_many_id    | integer    | null: false                    |
| user              | references | null: false, foreign_key: true |

### Association
- belongs_to :user


## as_membersテーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| what_band           | text       | null: false                    |
| why_band            | text       | null: false                    |
| ideal_leader        | text       | null: false                    |
| do_genre_id         | string     | null: false                    |
| ordered_style_id    | string     |                                |
| want_belong_many_id | integer    | null: false                    |
| user                | references | null: false, foreign_key: true |


### Association
- belongs_to :user



## postsテーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| title               | string     | null: false                    |
| introduction        | text       | null: false                    |
| band_name_idea      | string     | null: false                    |
| need_part_id        | integer    | null: false                    |
| area_of_activity_id | integer    | null: false                    |
| genre_id            | integer    | null: false                    |
| goals               | text       | null: false                    |
| plan                | text       | null: false                    |
| area_of_activity_id | integer    | null: false                    |
| genre_id            | integer    | null: false                    |
| professional_or_id  | integer    | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :user



## user_roomsテーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| room          | references | null: false, foreign_key: true |



### Association
- belongs_to :user
- belongs_to :room


## roomsテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| name        | string     | null: false       |


### Association
- has_many :user_rooms
- has_many :users, through: :user_rooms
- has_many :messages

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :room

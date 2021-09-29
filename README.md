# README



## アプリケーション名

Band Starter



## アプリケーション概要

本アプリはバンドメンバー募集アプリです。
会員登録を行うことにより、メンバーを募集したり、他ユーザーとチャットでやりとりを行うことが可能です。



## URL

https://band-starter-36553.herokuapp.com/



## テスト用アカウント

Basic認証
ID: admin
pass: 1111

募集ユーザー
email: a@a.a
pass: aaa111

加入ユーザー
email: b@b.b
pass: bbb111



## 利用方法

ログアウト時
・投稿一覧を閲覧する
・ユーザー一覧を閲覧する

ログイン時
・投稿一覧を閲覧する
・ユーザー一覧を閲覧する
・メンバーを募集する（※登録時、募集を希望したユーザーのみ）
・参加中のチャットルーム一覧を閲覧する
・チャットルームを作成する
・チャットを行う



## 目指した課題解決

既存のメンバー募集サイトに発生しているモラルの低下（ex.ドタキャン、メッセージ無視）を防ぐことを目的としました。
募集ユーザー、加入ユーザーを区分し、かつ、登録内容を細分化することで目的意識を明確化し、モラルを向上させることを狙いました。
また、項目の細分化に伴う煩雑化を軽減するデザインを心掛けました。



## 洗い出した要件

| 優先順位（高:3、中:2、低:1） | 機能           | 目的                      | 詳細                               | ストーリー                                       | 見積もり（所要時間:h） |
| ------------------------ | --------------| ------------------------- | --------------------------------- | ---------------------------------------------- | ------------------- |
| 3                        | ユーザー登録分岐 | 募集・加入ユーザーを区分する  | ユーザー登録2ページ目が分岐する         | 1ページ目で募集・加入の選択により、2ページ目が変化     | 7                   |
| 3                        | 記事投稿機能    | 募集記事を投稿可能にする      | 任意の内容で募集一覧に投稿を追加できる   | 募集ユーザーが前提、投稿するとタイトルが投稿一覧に追加  | 5                   |
| 3                        | チャット機能    | ユーザー同士の交流を可能にする | チャットルームを作成し文章を投稿できる   | ルーム作成後、メッセージを送ると非同期通信で内容が反映  | 3                   |
| 2                        | 評価機能        | ユーザー同士で信用度を共有   | ユーザーに高評価、低評価をつける         | ユーザー評価をクリックすると、評価数が表示される        | 5                   |
| 2                        | マップ機能      | 待ち合わせ場所の指定を効率化  | チャットルームにマップを表示する         | チャット時に待ち合わせ場所を確認することができる        | 7                   |
| 3                        | 記事検索機能    | 簡単に募集記事を探し出せる    | 条件を指定し、見つけたい記事を検索できる  | 記事の存在が前提、検索すると該当記事のみが表示される     | 5                   |
| 3                        | ユーザー検索機能 | 簡単にユーザーを探し出せる    | 条件を指定し、見たいユーザーを検索可能   | 検索すると該当ユーザーのみが表示される                 | 5                   |



## 実装した機能


・ユーザー登録分岐

登録ページへ遷移
[![Image from Gyazo](https://i.gyazo.com/d14de746aaf987bfbdc6221c4839892f.gif)](https://gyazo.com/d14de746aaf987bfbdc6221c4839892f)
募集ユーザーとして登録
[![Image from Gyazo](https://i.gyazo.com/1668b04d2396ebad24dfc22f1a2a1ff6.gif)](https://gyazo.com/1668b04d2396ebad24dfc22f1a2a1ff6)
加入ユーザーとして登録
[![Image from Gyazo](https://i.gyazo.com/7878a1410f42995ad34d3c8f4f89a642.gif)](https://gyazo.com/7878a1410f42995ad34d3c8f4f89a642)

・記事投稿機能

投稿ページへ遷移
[![Image from Gyazo](https://i.gyazo.com/20924da38c459c8a4aa7b5af99da57c2.gif)](https://gyazo.com/20924da38c459c8a4aa7b5af99da57c2)
記事の投稿
[![Image from Gyazo](https://i.gyazo.com/0ab040c0e57e3bbfc8252ddebc3a55c4.gif)](https://gyazo.com/0ab040c0e57e3bbfc8252ddebc3a55c4)

・チャット機能
チャットルームページを経由し、ルーム作成ページへ遷移
[![Image from Gyazo](https://i.gyazo.com/f64e08ec1cba5c70e9ce3793fd9114d4.gif)](https://gyazo.com/f64e08ec1cba5c70e9ce3793fd9114d4)
ルームを作成
[![Image from Gyazo](https://i.gyazo.com/793a67a0e9503fbbe066dc2749a23fea.gif)](https://gyazo.com/793a67a0e9503fbbe066dc2749a23fea)
ルームへ遷移
[![Image from Gyazo](https://i.gyazo.com/ec54933e58841d961c0e647bce6b9f2a.gif)](https://gyazo.com/ec54933e58841d961c0e647bce6b9f2a)
チャット
[![Image from Gyazo](https://i.gyazo.com/b310c617fefbccb10917518336180f5a.gif)](https://gyazo.com/b310c617fefbccb10917518336180f5a)

## 実装予定の機能

・評価機能
・マップ機能
・記事検索機能
・ユーザー検索機能



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
| how_many_compose    | integer | null: false               |
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
| compose_style_id  | integer    | null: false                    |
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
| do_genre_id         | integer    | null: false                    |
| ordered_style_id    | integer    |                                |
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



## ローカルでの動作方法

Ruby on Rails 6.0.0


$ git clone https://github.com/RyousukeOkazaki/band-starter-36553.git
$ cd hoge
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s

→ http://localhost:3000
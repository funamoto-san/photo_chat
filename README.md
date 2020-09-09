# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version _6.0.0_

* System dependencies

* Configuration

* Database creation 

* Database initialization 

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ER ( https://app.diagrams.net/?libs=general;uml#G1m6qu1kZoLlG1VcuqHIibtd6STx2TybXs )

* 実装予定の機能：ユーザー管理機能、画像投稿機能、チャットルーム作成機能、チャットルームにてメッセージの投稿機能

* 画像投稿機能では画像と画像のタイトルは必須だがその他の情報は任意とし、気軽に投稿できるようにしている

* チャットルームにてユーザーがメッセージのやりとりができる

* ...

# テーブル設計

## users テーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| nickname              | string | null: false |
| email                 | string | null: false |
| password              | string | null: false |
| password_confirmation | string | null: false |
| last_name             | string | null: false |
| first_name            | string | null: false |
| last_name_reading     | string | null: false |
| first_name_reading    | string | null: false |
| birthday              | date   | null: false |

### Association

- has_many :photos
- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

## photos テーブル

| Column         | Type   | Options |
| -------------- | ------ | ------- |
| name           | string | Options |
| camera         | string |         |
| lens           | string |         |
| iso_speed      | string |         |
| exposure_time  | string |         |
| aperture       | string |         |
| focal          | string |         |
| white_balance  | string |         |
| flash          | string |         |
| shooting_place | string |         |
| shooting_date  | date   |         |

### Associations

- belongs_to :user

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Associations

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## room_users テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

### Associations

- belongs_to :user
- belongs_to :room

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     | null: false                    |
| user_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

### Associations

- belongs_to :room
- belongs_to :user
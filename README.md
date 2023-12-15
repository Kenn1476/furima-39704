# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

Itemsテーブル
| Column                      | Type      | Options     |
| ----------------------------| --------- | ----------- |
| name                   | string    | null: false |
| description                 | text      | null: false |
| category_id            | integer   | null: false |
| sales_status_id        | integer   | null: false |
| shipping_fee_status_id | integer   | null: false |
| prefecture_id          | integer   | null: false |
| scheduled_delivery_id  | integer   | null: false |
| price                  | integer   | null: false |
| user                        | references| null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :order

## Usersテーブル
| Column            | Type   | Options                   |
| ------------------| ------ | ------------------------- |
| email             | string | null: false, unique: true |
| nickname          | string | null: false               |
| encrypted_password| string | null: false               |
| first_name         | string | null: false               |
| last_name         | string | null: false               |
| first_name_kana   | string | null: false               |
| last_name_kana    | string | null: false               |
| birth_date        | date   | null: false               |
rails
### Association
- has_many :orders
- has_many :items

Ordersテーブル
| Column      | Type       | Options                        |
| ------------| -----------| -------------------------------|
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |

### Association
- belongs_to :item
- belongs_to :user
- belongs_to :address


Addressesテーブル
 Column              | Type       | Options                        |
| -------------------| ---------- | ------------------------------ |
| postal_code        | string     | null: false                    |
| prefecture_id      | string     | null: false                    |
| city               | string     | null: false                    |
| street_number      | string     | null: false                    |
| telephone_number   | string     | null: false                    |
| building           | string     |                                |
| order              | references | null: false, foreign_key: true |

### Association
- belongs_to :order


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

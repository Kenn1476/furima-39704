# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

## Userテーブル
| Column            | Type   | Options                   |
| ------------------| ------ | ------------------------- |
| nickname          | text   | null: false, unique: true |
| email             | string | null: false               |
| encrypted_password| string | null: false               |
| firs_name         | string | null: false               |
| last_name         | string | null: false               |
| first_name_kana   | string | null: false               |
| last_name_kana    | string | null: false               |
| birth_date        | date   | null: false               |

### Association
- has_many :orders
- has_many :items
- has_many :addresses

Itemsテーブル
| Column                   | Type      | Options     |
| -------------------------| --------- | ----------- |
| item_name                | string    | null: false |
| description              | text      | null: false |
| item_category            | text      | null: false |
| item_sales_status        | integer   | null: false |
| item_shipping_fee_status | integer   | null: false |
| item_scheduled_delivery  | integer   | null: false |
| item_price               | integer   | null: false |
| user                     | references| null: false, foreign_key: true |
| address                  | text      | null: false |

### Association
- belongs_to :user
- belongs_to :address

Orderテーブル
| Column      | Type       | Options                        |
| ------------| -----------| -------------------------------|
| price       | integer    | null: false                    |
| address     | text       | null: false                    |
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :items


Addressテーブル
 Column            | Type       | Options                        |
| -----------------| ---------- | ------------------------------ |
| postal_code      | integer    | null: false                    |
| prefecture       | text       | null: false                    |
| city             | text       | null: false                    |
| street_number    | integer    | null: false                    |
| apartment_name   | text       | null: false                    |
| telephone_number | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :items


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

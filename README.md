# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

## Userテーブル
| Column          | Type   | Options     |
| ----------------| ------ | ----------- |
| Nickname        | Text   | null: false |
| Email           | String | null: false |
| Password        | String | null: false |
| First Name      | String | null: false |
| Last Name       | String | null: false |
| First Name Kana | String | null: false |
| Last Name Kana  | String | null: false |
| Birth Date      | Date   | null: false |

### Association
- has_many :order
- has_many :items

Itemsテーブル
| Column      | Type   | Options     |
| ------------| ------ | ----------- |
| Image       | Text   | null: false |
| Item Name   | Text   | null: false |
| Description | Text   | null: false |
| Category    | Text   | null: false |
| Price       | Integer| null: false |
| Message     | Text   | null: false |

### Association
- belongs_to :user

Orderテーブル
| Column      | Type   | Options     |
| ------------| ------ | ----------- |
| Price       | Integer| null: false |
| Address     | Text   | null: false |

### Association
- belongs_to :user


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

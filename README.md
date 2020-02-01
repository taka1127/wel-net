# README

## Userテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, default: ""|
|encrypted_password|string|null: false, default: ""|
|reset_password_token|datetime| |
|reset_password_sent_at|datetime| |
|remember_created_at|datetime| |
|created_at|datetime|null: false|
|updated_at|datetime|null: false|
### Association
- has_many :comments


## Officeテーブル
|Column|Type|Options|
|------|----|-------|
|office_name|string|null: false|
|email|string|null: false, default: ""|
|encrypted_password|string|null: false, default: ""|
|reset_password_token|datetime| |
|reset_password_sent_at|datetime| |
|remember_created_at|datetime| |
|created_at|datetime|null: false|
|updated_at|datetime|null: false|
### Association
- has_many :informations
  has_many :comments


## Informationテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|office_tel|string|null: false|
|postal_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|house_number|string|null: false|
|text|string||
|image|text||
|office_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :office


## Commentテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|office_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :office
  belongs_to :user

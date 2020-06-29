# README
fleamarket_sample_76b DB設計

<img width="927" alt="スクリーンショット" src="https://i.gyazo.com/1f13ff0243733a840943c29b751b322d.png">


## Items テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false| 
|price|integer|null: false|
|description|string|null: false, foreign_key: true|
|user_id|references |null: false, foreign_key: true|
|category_id|references|null:false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
|size|string|null:false|
|status|string|null:false|
|cost|string|null:false|
|area|string|null:false|
|days|string| null:false|

### Associatio
- has_many :comments
- has_many :favorites
- belongs_to :user
- belongs_to :brand
- belongs_to :category
- has_many :images



## Comments テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|
|text|string|null: false|

### Association
- belongs_to :item
- belongs_to :user



## Usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|nickname|string|null: false|
|encrypted_password|default|null: false|
|reset_password_token|||
|reset_password_sent_at|||
|remember_created_at|||

### Association
- has_one : address
- has_one : identification
- has_many :favorites
- has_many :items
- has_many :comments
- has_one :card



##  Identification(本人確認)テーブル
|Column|Type|Options|
|------|----|-------|
|familyname|string|null: false|
|firstname|string|null: false|
|familyname_kana|string|null: false|
|firstname_kana|string|null: false|
|birth_date|date|null: false|
|user_id|references| null: false|

### Association
- has_one : address
- belongs_to: user



## Addressテーブル
|Column|Type|Options|
|------|----|-------|
|postcode|string|null: false|
|prefecture_code|integer|null: false|
|address_city|string|null: false|
|address_street|string|null: false|
|address_building|string|
|phone_number|string|
|user_id|references| null:false|

### Association
- belongs_to :user
- belongs_to :identification



## Sns_credentialsテーブル
|Column|Type|Options|
|------|----|-------|
|provider|string||
|uid|string||
|user|references|foreign_key:true|

### Association
- belongs_to :user



## Cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null:false,foreign_key:true| 
|customer_id|string|null:false|
|card_id|string|null:false|

### Association
- belongs_to : user



## Favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references |null:false,foreign_key:true, unique: true|
|item_id|references|null:false,foreign_key:true, unique: true|

### Association
- belongs_to : user
- belongs_to : item



## Categorysテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null;false|
|ancestry|string|null;false|

### Association
- has_many :items
- has_ancestry



## Brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name(商品ブランド名)|string|null;false|

### Association
- has_many :items



## Imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null:false|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :item

### アプリ名:フリーマーケット76b 
### URL :http://54.250.79.49/
![f01](https://user-images.githubusercontent.com/64763739/86567827-ebd06180-bfa6-11ea-8fe1-f3e1091fd81c.png)

ID/Pass<br>
ID  : nagoya76b<br>
Pass: nagoya76b<br>

テスト用アカウント<br>
購入者用<br>
メールアドレス: a@a.a<br>
パスワード: aaaaaaa<br>

購入用カード情報<br>
番号： 4242424242424242<br>
期限： 01/23<br>
セキュリティコード：123<br>

出品者用アカウント<br>
メールアドレス名: test@test.com<br>
パスワード: testtest<br>

### 開発状況:<br>
開発環境<br>
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code<br>

開発期間と平均作業時間<br>
開発期間：6/3~6/26<br>
1日あたりの平均作業時間：7<br>

開発体制<br>
人数：4<br>
アジャイル型開発（スクラム）<br>

### 動作確認方法
Chromeの最新版を利用してアクセスしてください。<br>
ただしデプロイ等で接続できないタイミングもございます。<br>
その際は少し時間をおいてから接続ください。<br>
同時に複数の方がログインしている場合に、ログインできない可能性がございます。<br>

### 開発担当箇所 ※（ログインしてから繋いでください）
#### マイページ/マイページ(支払方法,ログアウト)/パンくず]<br>(フロントエンド/バックエンド)<br>
![f02](https://user-images.githubusercontent.com/64763739/86567838-f0951580-bfa6-11ea-984b-6f1c5b74c39d.png)

#### 商品購入確認ページ・完了ぺージ/クレジットカード登録・削除ページ]<br>(フロントエンド/バックエンド)<br>
商品購入機能<br>
購入者用アカウントでログイン後、適当な商品を選択することで商品購入画面へ進めます。<br>
クレジットカード情報の入力を求められた際は、上記の購入用カード情報を入力することで購入できます。<br>

購入確認ページ :トップページの一覧から商品を選択し、購入ボタンをクリックするとご覧いただけます。<br>
![f03](https://user-images.githubusercontent.com/64763739/86567841-f0951580-bfa6-11ea-9d8a-2e19c6db2d68.png)

購入完了ページ :トップページの一覧から商品を選択し、購入ボタンクリックし「購入する」ボタンをクリックするとご覧いただけます。<br>
![f04](https://user-images.githubusercontent.com/64763739/86567842-f12dac00-bfa6-11ea-87cd-19a07b95ecf3.png)

クレジットカード登録ページ ：マイページの支払方法ををクリックするとご覧いただけます。<br>
クレジットカード情報確認,削除ページ ：クレジットカード登録がされている前提で、マイページの支払方法をクリックするとご覧いただけます。<br>
![f05](https://user-images.githubusercontent.com/64763739/86567844-f1c64280-bfa6-11ea-91bf-c58da963d880.png)

#### [ユーザー新規登録、ログイン(メールアドレスのみ)]<br>(バックエンド)<br>
ユーザー新規登録ページ:http://54.250.79.49/users/new ウィザード形式。<br>
![f06](https://user-images.githubusercontent.com/64763739/86567846-f1c64280-bfa6-11ea-8957-bf8f3f733f03.png)
ログインページ :http://54.250.79.49/users/sign_in <br>

### 各担当箇所の詳細
デプロイ<br>
・担当内容<br>
basic認証を実装<br>

DB設計・ER図<br>
・担当内容<br>
ER図の作成・各テーブルの作成<br>
モデルへのアソシエーションの記述<br>

パンくず機能<br>
・概要<br<
現在表示されているページの階層がわかりやすくなるようにページの左上にパンくず機能を設置<br>
・担当内容<br>
gem gretelを使用<br>

商品購入機能<br>
・担当内容<br>
Payjpを用いて購入するAPI機能を使用<br>

マイページ/マイページ(支払方法,ログアウト)<br>
・担当内容
マイページ・支払方法・ログアウトページを作成<br>

ユーザー新規登録、ログイン機能<br>
・担当内容<br>
新規登録ページではウィザード形式(3段階認証)で新規登録画面から完了までを実装<br>
モデル、コントローラ、ルーティングの作成し各テーブルごとに切り分けて管理<br>
sessionを用いたデータ保持、gem deviseを使用<br>
必要項目を満たせばユーザー登録/ログインができるバリデーションを実装<br>

その他(アニメーション)<br>
担当したページ(マイページや商品購入機能のページ)のボタン等に少しアニメーションを加えた<br>
![f07](https://user-images.githubusercontent.com/64763739/86567847-f25ed900-bfa6-11ea-8d3b-006aec15198b.png)
※一部抜粋<br>
左側が通常で[クレジットカードを追加する]ボタンにカーソルを当てると色がゆっくりと出現します。<br>


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

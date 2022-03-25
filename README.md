# NaganoCake
DMMWEBCAMPのチーム開発で作成したECサイトとなります。
## 概要
長野県にある小さな洋菓子店「ながのCAKE」の商品を通販するためのECサイト開発。
## 背景
元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、全国から注文が来るよう になった。 InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、管 理機能を含んだ通販サイトを開設しようと思い至った。
## 設計
[アプリケーション詳細設計](https://docs.google.com/spreadsheets/d/1pIN4nHAni05ZAkLdIBYe0cD7R70IzLJfD4qOO6oEOag/edit#gid=1496493723)

[テーブル定義書](https://docs.google.com/spreadsheets/d/1kE1tdx4-LQy7YBMXd8j0uausYD3nf7Nx3Wc_CglupMA/edit#gid=1863208916)

[ER図](https://docs.google.com/document/d/1CK3VQRujmkFIxU2q5kBol7Lg6XvkIe_S1GyZvYYlGNs/edit)

## 使い方
~~~
$ git clone git@github.com:montblanc-test/nagano_cake.git
~~~
~~~
$ bundle install
~~~
その後、データベースへのマイグレーションを実行します。
~~~
$ rails db:migrate
~~~
Railsサーバーを立ち上げます。
~~~
$ rails server
~~~

## 使用技術
- Ruby  2.6.8
- Rails 6.1.5
- Bootstrap 4.5

## アプリ機能一覧
### 顧客側
【会員未登録】

- サイトの閲覧
- 会員新規登録機能
- 検索(商品名

【会員登録後】

- ログイン機能（メールアドレス、パスワードでログイン）
- ログアウト機能
- 退会機能
- 商品一覧、詳細
- 商品のカート追加機能
- カート内の商品の個数変更機能
- 商品購入機能
- マイページでの登録情報の変更、配送先の追加、注文履歴の確認機能
- 検索(商品名)

### 管理者側
- ログイン機能
- ログアウト機能
- 商品の新規登録、一覧、詳細、編集機能（販売ステータスの変更が可能）
- 会員の一覧、詳細、会員情報の編集機能（会員ステータスを有効/退会に切り替えが可能）
- 注文履歴の一覧、詳細、注文状況の編集機能（注文ステータス, 製作ステータスの切り替えが可能）
- 商品のジャンル設定

## チームメンバー
- Masaki-Ishida-1
- nana-ish
- yanaginn
- nknsn

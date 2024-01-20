# アプリケーション名
  Buisica Share

# アプリケーション概要
  名刺交換した情報の電子化アプリケーション。
  他社とのコミュニケーション履歴に関して担当部署・担当者・どのカテゴリーで接点があるのか簡単に共有でき、コメントを残すことができる。

# URL
  https://buisica-share.onrender.com

# テスト用アカウント
・Basic認証password ：****  
・Basic認証ID       ：****  
・メールアドレス      ：****  
・パスワード：        ：****

# 利用方法

## 名刺情報投稿
1. トップページ（一覧ページ）のヘッダーからユーザー情報の新規登録を行う。
2. 新規投稿画面より、名刺情報（画像・先方氏名・先方社名・部署名・電話番号・経緯）を入力し、投稿する。

## コメント機能による社内対応事例の共有
1. 投稿された名刺情報に対してコメントを入力する。  
  （投稿者情報含め、過去のやりとりの情報などを補足できる機能）
2. コメント含めユーザー名をクリックするとユーザー情報の詳細ページへ遷移し、担当者の電話番号の情報を確認することができる。




# アプリケーション作成の背景
・サステナブル関連の企画・戦略部門に所属しており、自社製造拠点に関する将来的な運営について他社と意見交換・コミュニティへ参画する機会が多かった。

・その中で名刺交換を短期間で膨大に行うケースもあるが、社内の各部門で既に接点のある情報に関して情報収集する点に非常に苦戦した経験があった。

・原因として社内の縦割り構造が要因ではあったが、簡易的にでも名刺の情報から社内のどの担当者がどの切り口で接点を持っているいるのかという情報があればとアプリ開発を企画した。


# 洗い出した要件
https://docs.google.com/spreadsheets/d/1H2oWDzTvOzcf6kDtsOF7AToqIrxXBwGaHHYYH1mJ-Ho/edit?usp=sharing

# 実装した機能

# 実装予定の機能






# データベース設計

## ER図
[![Image from Gyazo](https://i.gyazo.com/9125156540304fcb0c9f6ddf2c54f1cd.png)](https://gyazo.com/9125156540304fcb0c9f6ddf2c54f1cd)

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| last_name          | string  | null: false               |
| first_name         | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| employee_number    | string  | null: false               |
| department         | integer | null: false               |
| phone_number       | string  | null: false               |

### Association

has_many :cards  
has_many :comments

## cards テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| client_last_name    | string     | null: false                    |
| client_first_name   | string     | null: false                    |
| company_name        | string     | null: false                    |
| client_department   | string     | null: false                    |
| client_phone_number | string     | null: false                    |
| description         | tex  t     | null: false                    |
| user                | references | null: false, foreign_key: true |

### Association

belong_to :user  
has_many  :comments

## comments テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| text               | text       |                                |
| user               | references | null: false, foreign_key: true |
| card               | string     | null: false, foreign_key: true |

### Association

belong_to :user  
belong_to :card


# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/c6aa3e642652e306a24e92e1faf39bc4.png)](https://gyazo.com/c6aa3e642652e306a24e92e1faf39bc4)

# 開発環境
Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code

# ローカルでの動作方法

# 工夫したポイント

# 改善点

# 制作時間

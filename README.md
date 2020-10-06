# アプリケーション名

## drawer-app

# アプリケーション概要

## タイトル・作成日時・画像・コメントの投稿、ユーザーと作成日時からのデータ検索

# URL

## https://drawer-app29184.herokuapp.com/

# テスト用アカウント	

## Basic認証 ID:admin Pass:2222
## テストアカウント user:新宿, mail:sinzyuku@sample.jp, PW:123abc

# 利用方法

## ログイン→新規投稿をクリック→必要事項を入力し投稿
## 検索したいユーザー・日時を選択、選択しなければ新規投稿順に表示

# 目指した課題解決

## 前職の経験から売場などのデータとして残らない知的財産の保存
## 知的財産の蓄積・継承による人材育成と、クオリティーの向上
## あらゆる「面倒」をなくし、シンプルな構成

# 洗い出した要件

## ログイン	企業外からの侵入を防ぐ	devise導入	ログイン店舗の識別
## 投稿・画像保存 売場作成という知的財産の保存。記録として残し、共有できるようにする。
## 新規投稿・画像アップロードは誰でもできるように、シンプルな構成にする。	１ページで詳細まで残せるように、タイトル、作成時期、画像アップロード、コメントを投稿できるように作成。
## 検索機能	店舗・時期で検索をかけれるようにし、欲しい情報だけ得られるようにする。	企業内の情報なので、制限は設けず、誰でもどの店舗の投稿も閲覧できるようにする。"昨年の次の季節、どのようなことをしていたのか、他の店舗の良かったところはどのように展開していたのか確認。他店舗の好事例の共有。
## ＊削除機能は投稿店舗のみ表示	

# 実装した機能について

## 投稿画面
### https://drawer-app29184.herokuapp.com/partitions/new

## 検索結果と画像表示
### https://drawer-app29184.herokuapp.com/partitions/51

# 実装予定の機能

## 検索をボタンクリックではなく、Jsを利用し随時反映
## 新規投稿がわかる「new」のような表示
## 日時の検索結果を範囲指定にするか検討

# 課題

## 検索結果から画面表示の切り替えが未実装
## 検索結果を二重に含めた切り替えが未実装

# 使用技術（開発環境）

## バックエンド
### Ruby, Ruby on rails

## フロントエンド
### HTML, CSS

## データベース
### Mysql2

## インフラ
### AWS

## アプリケーションサーバ（本番環境）
### Heroku

## ソース管理
### Github, GithubDesktop

## エディタ
### VSCode

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :drawers

## drawers テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| category | string | null: false |
| comment  | text   |             |

### Association

- belongs_to :user
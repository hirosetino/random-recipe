# アプリケーション名
Random Recipe


# アプリケーション概要
レシピを投稿できる。また、献立に困ったときにランダムで１つレシピを選んでくれるルーレットがある。


# URL
https://rondom-recipe.onrender.com


# テスト用アカウント
* Basic認証パスワード：0524
* Basic認証ID：hirose
* メールアドレス：test@email.com
* パスワード：a11111


# 利用方法
## レシピ投稿
1. トップページからユーザー新規登録を行う
2. レシピ投稿ボタンからレシピ情報（料理写真、料理名、調理時間、材料・数量、作り方）を入力し投稿

## ルーレット
1. トップページのルーレットエリアのスタートボタンを押す
2. ストップボタンを押す
3. 出たレシピ名をクリックするとそのレシピの詳細に遷移


# アプリケーションを作成した背景
自分が毎日自炊をする中で「今日は何を作ろう」と考えることが多かった。友人・知人等に話を聞くと同じ様な課題を抱えていることが判明した。自分で決めるよりも誰かに決めてもらったほうが早いし、何より面白いのではないかと考え開発することにした。


# 洗い出した要件
https://docs.google.com/spreadsheets/d/19oKR7SKHltqvyoABGj3KdR7gGjc8fHsa0vO1UkPOgZI/edit?usp=sharing


# 実装した機能についての画像やGIFおよびその説明
## レシピ投稿機能
[![Image from Gyazo](https://i.gyazo.com/b29a4d0dc1e2833ac35821d72edd4bf4.gif)](https://gyazo.com/b29a4d0dc1e2833ac35821d72edd4bf4)
* 画像は１つのみ選択でき、プレビューが出る
* 材料、数量フォームと作り方フォームは追加ボタンを押すことで追加できる

# ルーレット機能
[![Image from Gyazo](https://i.gyazo.com/67402ce384d8695ca8413adb77426e1f.gif)](https://gyazo.com/67402ce384d8695ca8413adb77426e1f)
* トップページのルーレットエリアのスタートボタンを押しストップボタンを押すとランダムで１つ選ばれる
* 出たレシピ名をクリックするとそのレシピの詳細に遷移する

# お気に入り機能
[![Image from Gyazo](https://i.gyazo.com/e3978cb89e5e10f353296b6233841cd5.gif)](https://gyazo.com/e3978cb89e5e10f353296b6233841cd5)
* レシピの星アイコンを押すとお気に入り追加ができる
* もう一度押すと解除される

# マイページ
[![Image from Gyazo](https://i.gyazo.com/4c10a09b05cad1112a996dc7e1514175.gif)](https://gyazo.com/4c10a09b05cad1112a996dc7e1514175)
* トップページかレシピに表示されているニックネームを押すとマイページに遷移する
* 投稿一覧を押すと自分が投稿したレシピ一覧を見ることができる
* お気に入り一覧を押すと自分がお気に入りしたレシピの一覧を見ることができる

# 検索機能
[![Image from Gyazo](https://i.gyazo.com/5eb047785b4505a32b401c6924a9f732.gif)](https://gyazo.com/5eb047785b4505a32b401c6924a9f732)
* レシピ名で検索ができる


# データベース設計
[![Image from Gyazo](https://i.gyazo.com/20851beda0895217a41ba8408b07a8e0.png)](https://gyazo.com/20851beda0895217a41ba8408b07a8e0)


# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/d6045858c0c4b5c0c8a7d1ec9ff094ea.png)](https://gyazo.com/d6045858c0c4b5c0c8a7d1ec9ff094ea)

# 開発環境
* HTML, CSS
* JavaScript
* Swiper
* Ruby
* Ruby on Rails
* MySQL
* PostgreSQL
* VScode
* GitHub


# ローカルでの動作方法
以下のコマンドを順に実行  
% git clone https://github.com/hirosetino/rondom-recipe.git  
% cd rondom-recipe  
% bundle install


# 工夫したポイント
Swiperというjsのライブラリを使用して画像スライダーをつけた。  
レシピ削除時にはモーダルが出る様にして即削除となることを防いだ。
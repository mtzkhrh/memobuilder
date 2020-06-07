# MemoBuilder
データを家ディレクトリ/部屋ディレクトリに配置する<br>


## サイト概要
例えば日々の小さな思い出、例えば漫才のネタ、<br>
例えば豆知識、例えば機能の実装に関して記述したコード、<br>
思い出したいことや再度利用したい知識などを記録、整理、共有、検索できるアプリケーション。<br>
イメージとしては個人利用に焦点を当てた<br>
知識や記憶のクックパッド/Qiita。<br>
<br>
**アプリケーションの要**<br>
記録の整理はPCの様に階層構造になっている<br>
例）「家」/「部屋」/「記録のタイトル」<br>
上記の例のように3つの階層に分ける<br>
<br>
メインの利用者は個人、またはグループ<br>
記録を分けたりまとめたりすることで 検索やすくしたり、<br>
別の作業で参考にするチートシートにしたりと用途には多様性がある。<br>
検索しやすくした単語帳のようなメモ帳をイメージ。<br>
<br>
投稿の一般公開に関して、<br>
個人・グループ利用向けで開発するが勿体ないので一般公開もできる様にする。<br>
<br>
他人の公開された投稿はタイトルやタグ、記録内容で調べることができる。<br>

### サイトテーマ
個人やグループで利用するなら、記録を分かりやすく保存するツールにする。<br>
SNS的な利用をするなら、知識や記憶を簡潔に保存し、他者に活かしてもらう。<br>


### テーマを選んだ理由
Webcampでプログラミングのチーム開発をしている時に<br>
「以前の学習で製作したあのアプリのあのコードが使える」ってことが多く、<br>
何度もそのコードのあるファイルを開き、探すことがよくありました。<br>
また学習の結果としてチートシートを作成したものの、<br>
チートシートの中から探す作業や、そもそも記録していたか確認する作業などがあり、<br>
結果として手間や時間がかかることもよくありました。<br>
<br>
このような記憶や記録を探す手間暇をもっと減らすことは出来ないか、<br>
効率的に探すことは出来ないかなど色々と考えた結果、<br>
メモ帳をPCの階層構造の様に分かりやすく分類し<br>
保存と閲覧ができるアプリケーションが欲しいと思いテーマに選びました。<br>

### ターゲットユーザ
何かを勉強中の人、忘れっぽい人、<br>
再度利用したいデータがある人、記憶や記録をシェアしたい人<br>
基本的に個人か小さい集団を想定。<br>


### 主な利用シーン
- 日々の記録を分かりやすく記録する
	- 「育児」/「好き嫌い」/「細かくしたら食べた物」にんじん…

- 思い出したい時に思い出しやすいように記録する。
	- 「コント」/「小学生向け」/「校庭に犬」ネタ帳Vol.9の58ページ

- 記録を階層構造で保存することにより、条件分けした記録を取ることができる
	- 「ポチ」/「気に入ったおもちゃ」/「ボール型」〇〇社製の△△…
	- 「タマ」/「エサの好み」/「食べなかったエサ」××味のカリカリ…

- 何かの作成中に以前の作成手順を参考にしたい時に調べやすい。
	- 「プログラミング」/「rails」/「データをランダム取得する方法」model.sample(n)…

- todoリストを記録する
	- 「アプリ開発」/「設計フェーズ」/「ER図」エンティティ…
<br>
書き方は自由自在

## 設計書
- 前提機能
	- 会員登録機能
	- 管理者機能
	- 記録の投稿機能

- メイン機能1
	- 記録のディレクトリを作れる
		- とりあえず容易に実装可能な3階層を想定
		- house / room / post_data
- メイン機能2
	- データを探しやすい
  	- 自分用のタグを作れて投稿に複数登録できる
  	- タグ・タイトル・内容で検索できる
  	- ディレクトリ内で検索できる
- メイン機能3
	- リッチテキストの導入
		- wysiwygエディター　Summernote


- おまけ機能
	- フォロー機能で投稿の公開範囲の指定
	- ストック機能で（自他含む）特定の投稿を保持できる
	- 記録へのコメント機能

- 余裕があれば
	- いいね機能
	- まとめて場所を移動する機能
	- 同一メールアドレスで複数アカウントを持てる→任意のID_name
	- ドラッグ＆ドロップでファイルの整理ができる
	- 一般公開された投稿のレビュー
	- インクリメンタルサーチ

### 機能一覧
[チャレンジ要素一覧](https://docs.google.com/spreadsheets/d/1AE_4bTmePz_kfmAAMN1GkQFBQoLb83-OLgLhKVb1P-0/edit?usp=sharing)
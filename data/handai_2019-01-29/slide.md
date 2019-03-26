# 自然言語処理研究者に向けるRubyのススメ

%author: 大崎 瑶

![icon](youchan.jpg)

## Who am I?

* 大崎 瑶(よう)
* 株式会社レトリバ
* @youchan
* Rubyist

## Rubyist

* Rubyが好きです。
* なので、Rubyで出来ることをもっと増やしたい！
* 具体的には以下の2つ事柄に対して活動をしています。
  * Opal(Ruby to JavaScript compiler)
  * 自然言語処理

## Opal

* **silica**: A rapid development tools for Hyalite & Menilite
* **hyalite**: A Ruby implemented Virtual DOM written in Opal
* **menilite**: An isomophic web programming framework in Ruby
* **drb-websocket**: A druby protocol via WebSocket
* **opal-drb**: A druby implementation runable on browser.

## Opal

* [Building web-based board games only with Ruby](https://rubyconf.org/program#session-694)

## Books

![large](books.png)

## なぜこの話をするのか？

* 機械学習や自然言語処理するならPython?
* 他に選択肢があってもよいのでは？
* Rubyもよいところはある
  - 日本人が開発している言語なので日本語の自然言語処理に可能性
  - やることがたくさんある

## Agenda

* Rubyとは何なのか？
* Rubyのよいところ
* Rubyの最新事情
* Rubyと自然言語処理
* Rubyとコミュニティ

---

%large: Rubyとは何なのか？

## Rubyの生いたち

* 1993年2月24日まつもとゆきひろ(Matz)によって開発された
* Perlのような使いやすさにオブジェクト指向をプラスしたスクリプト言語
* 1.9でYARVが搭載される
* Ruby on Railsの登場により一躍Web開発のメジャー言語になる
* 2.6でJITコンパイラが搭載される

## Rubyの特徴

* オブジェクト指向
* 動的型付け
* 世代別GC

---

%large: Rubyのよいところ

## Rubyのよいところ

* 楽しい！
* 実行時に何でもできるダイナミックさ
* 文字列操作
* コミュニティ
* Rubyのよくないところ

## 楽しい！

* 日本人的なおもてなし
  - 標準ライブラリ
  - ブロック
* TMTOWTDI(There's More Than One Way To Do It)
  - Diversity is Good
* オブジェクト指向のこだわり

## ブロック

* メソッドの引数に処理を渡すことができる
  * 関数型言語ならあたりまえ？！
* RubyはLispに強く影響を受けている

```ruby
array.reduce do |acc, i|
  acc + i
end
```

## ブロック(2)

* 引数で渡されたブロックは`yield`で呼びだすことができる

```ruby
def tokenize(str)
  str.split.each do |word|
    yield word
  end
end
```

## TMTOWTDI

* There's More Than One Way To Do It

```ruby
array.reduce do |acc, i|
  acc + i
end

array.reduce(&:+)

array.sum
```
---

%large: オブジェクト指向のこだわり

## オブジェクト指向のこだわり(その1)

%huge: 数値もオブジェクト

## オブジェクト指向のこだわり(その2)

%huge: クラスだってオブジェクト

## 実行時に何でもできるダイナミックさ

* メタプログラミング
* DSL
* ASTさえも覗ける

## メタプログラミング

* クラスも書き換えられる柔軟さ => オープンクラス
  - **ex.** active-support
  - refinementで影響範囲を限定することもできる
* eval

## オープンクラス

```ruby
class String
  def tokenize
    self.split.each do |word|
      yield word
    end
  end
end
```

## active-support

```ruby
require 'active_support'
require 'active_support/core_ext'

Date.today - 7.days
```

## eval

* `instance_eval`をつかうと便利

```ruby
require 'natto'
Natto::MeCab.new.instance_eval do
  parse "すもももももももものうち"
end
```

## DSL

**RSpec**

```ruby
RSpec.describe Game do
  describe "#score" do
    it "returns 0 for an all gutter game" do
      game = Game.new
      20.times { game.roll(0) }
      expect(game.score).to eq(0)
    end
  end
end
```

## ASTさえも覗ける

```ruby
RubyVM::AbstractSyntaxTree.parse("1 + 2 * 3")
```

%small: https://techlife.cookpad.com/entry/2018/12/25/110240

---

![middle](chainer-compiler.png)

%small: [https://research.preferred.jp/2019/01/chainerモデルのさらなる高速化、デプロイの簡便化、/](https://research.preferred.jp/2019/01/chainer%E3%83%A2%E3%83%87%E3%83%AB%E3%81%AE%E3%81%95%E3%82%89%E3%81%AA%E3%82%8B%E9%AB%98%E9%80%9F%E5%8C%96%E3%80%81%E3%83%87%E3%83%97%E3%83%AD%E3%82%A4%E3%81%AE%E7%B0%A1%E4%BE%BF%E5%8C%96%E3%80%81/)

## 文字列操作

* CSI方式
* 正規表現
  - 正規表現リテラル
  - Onigumo

## CSI方式

![large](csi.png)

## 正規表現

**正規表現リテラル**  

```ruby
/T[\w']+ M\w+ T\w+ O\w+ W\w+ T\w+ D\w+ I\w+/ =~ "There's More Than One Way To Do It"
```

**カタカナ**

```ruby
/\p{katakana}+/.match("Rubyのススメ")
```

## コミュニティ

* Rubyの開発者の多くが日本人
* 地域コミュニティ活動が活発
* 日本最大級の言語系カンファレンス: **RubyKaigi**

## Rubyのよくないところ

* いろいろな書きかたができる
* なんでもオブジェクト
* CSI方式
* ダイナミックすぎ

## Break time

![middle](cats.png)

---

%large: Rubyの最新事情

## Ruby3x3

* 2015年のRubyConf,RubyKaigiでMatzが宣言
* Ruby3.0では3倍早くする(何と比較して？ => Ruby2.0)
* JIT compile
* Parallelism
* Typing

## JIT compile

* MJIT
* Ruby2.6の新機能としてオプションで利用可能

## Parallelism

* Guild
* まだまだ議論している

## Typing

* Steep
  - Gradual Typing
* Stripe
* Type Profiler

---

%large: Rubyと自然言語処理

## Rubyと自然言語処理

* 現状確認
* red-chainer

## 現状確認

* 数値計算 => Numo::Narray, cumo
* Deep Learning => mxnet.rb, tensorflow.rb, RedChainer
* 自然言語処理 => treat, open-nlp, stanford-core-nlp
  * https://github.com/arbox/nlp-with-ruby

## 機械学習領域での対応状況

![w90](ml.png)

%small: RubyKaigi2018: "Fast Numerical Computing and Deep Learning in Ruby with Cumo"

%small: https://speakerdeck.com/sonots/fast-numerical-computing-and-deep-learning-in-ruby-with-cumo?slide=6

## 自然言語処理

* treat
  - https://github.com/louismullie/treat/wiki/Quick-Tour
* open-nlp
* stanford-core-nlp
* nlp-pure

基本的にOpenNLPやStanford CoreNLPなどのバインディングだけど、  
pure rubyの実装もある

## RedChainer

* ChainerのRuby版
* 自然言語処理はword2vecとLSTMの実装のマージ作業中
  - https://github.com/youchan/red-chainer/tree/lstm

---

%large: Rubyとコミュニティ

## Rubyとコミュニティ

* Rubyコミッターの大部分は日本人
  - (日本の)Rubyのコミュニティに行くとコミッターがいる！
* RubyKaigi
* オープンソースコミュニティ

---

![middle](asakusarb.png)

%small: https://asakusarb.esa.io/

## RubyKaigi

![large](committers.jpg)

## OSS-Gate

![w90](oss-gate.png)

%small: https://oss-gate.github.io/

---

%large: まとめ

* Rubyのよいところを紹介しました
* 自然言語処理や機械学習の分野ではまだまだPythonに追いつけない
* でも逆にやれることが沢山あって楽しいですよ！
* Rubyのコミュニティはいつでも皆さんの参加をお待ちしています！

---


# RubyKaigiのプログラムから学ぶRuby最新事情

レトリバセミナー 2018/05/30 大崎 瑶

![chokuzen](chokuzen.png)

## whoami

* 名前
  - 大崎 瑶(よう)
* 略歴
  - 1998 - 2000 筑波大学 大学院 電子情報工学研究科 (工学修士了)
  - 2009 - 2014 株式会社アプレッソ
  - 2014 - 2017 株式会社ユビレジ
  - 2017/11 株式会社レトリバ 入社
* 趣味
  - お酒 🍶
  - プログラミング
    - 技術書の薄い本
  - 電子工作

![analog](analog.jpg)

## ちょっと宣伝

* [Pragmatic Opal Rubyで作るブラウザアプリケーション開発ガイド (技術書典シリーズ(NextPublishing)) | 大崎 瑶 |本 | 通販 | Amazon](https://www.amazon.co.jp/Pragmatic-Opal-Ruby%E3%81%A7%E4%BD%9C%E3%82%8B%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E9%96%8B%E7%99%BA%E3%82%AC%E3%82%A4%E3%83%89-%E6%8A%80%E8%A1%93%E6%9B%B8%E5%85%B8%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-NextPublishing/dp/4844398148/ref=sr_1_1?ie=UTF8&qid=1527649765&sr=8-1&keywords=pragmatic+opal)

---

![large](rubykaigi2018.png)

## RubyKaigiについて

* RubyKaigi2018が2018/05/31(明日！）～2018/06/02で開催
* 2006年の初回から今回で12回目
* 国際カンファレンス(海外からの参加者多数)
* 今回の参加者は1000人を超えると言われています。

## どんな内容？

* Rubyの新機能の提案や紹介
  - Rubyは国産の言語なので、Rubyのコミッター(作っている人たち)もほとんどが日本人！
* RubyのハックやHowto
  - RubyKaigiは世界中のRubyのカンファレンスの中でもTechieなことで知られています。
* Rubyで作ったプロダクト自慢
  - たまにRubyの別実装みたいなものも出てきます。

## 今日のお話の目的

* 明日からはじまるRubyKaigi2018に興味を持ってもらいたい
   - 参加できなくても大丈夫！ビデオが公開されます。
* Rubyの現状と課題をRubyKaigiを通して知ってもらいたい
* そしてRubyに興味を持ってもらいたい

---

%large: ちょっとだけ振り返ります

## <span {style: {color: "red"}}>Ruby3x3</span>

* Ruby3ではRubyを<span {style: {color: "red"}}>3倍速く</span>したい
* 並列性を扱えるようにしたい
* 型がほしい(でも型を書きたくない)

*[Keynote - RubyKaigi 2015](http://rubykaigi.org/2015/presentations/matz)*

## Rubyの新機能に関するトーク

* パフォーマンス
* 並行性
* 型システム

## パフォーマンス向上のための手法

* JITコンパイル
* [Towards Ruby 3x3 performance - RubyKaigi 2017](http://rubykaigi.org/2017/presentations/vnmakarov.html)
  - MJIT
  - RTLというGCCのインストラクションセットをつかったJITコンパイルの手法の提案
* [VMに手を加えずRubyを高速化するJITコンパイラ「YARV-MJIT」の話 - k0kubun's blog](https://k0kubun.hatenablog.com/entry/yarv-mjit)

## パフォーマンスに関するトーク

- [The Method JIT Compiler for Ruby 2.6 - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/k0kubun.html#jun02)
- [Three Ruby performance projects - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/vnmakarov.html#jun02)

## 並行性と並列性

**並行性(Concurrency)**

プログラム中の複数の処理ブロックが論理的に並行動作可能な状態。それぞれの処理ブロックは処理順序に関係なく実行することができ、共有するリソースの競合を回避することができる。

**並列性(Parallelism)**

並行性をもつプログラムが時間的に同時に動作することが出来る複数のプロセッサによって並列に実行される状態

*[並行性と並列性についてオレオレ定義してみる - Qiita](https://qiita.com/youchan@github/items/2e5484517875d8cfd9aa)*

## Rubyの並列性

* GVL(or GIL)
  - スレッドの実装にはネイティブスレッドを使っているが、同時に複数のスレッドが動作しないようにロックしている。
  - これはPythonも同じ
* Webアプリケーション(Ruby on Railなど)において高い並列性が求められることも
* Ruby自体が速くなるわけではないが、アプリケーションの実行は速くなる可能性がある。(特に機械学習とか)
* Rubyでは並列性を気軽に扱いたい

## 並行性に関するトーク

**Guild**

* [A proposal of new concurrency model for Ruby 3 - RubyKaigi 2016](http://rubykaigi.org/2016/presentations/ko1.html)
  - This presentation proposes a new concurrency model to support parallel execution for Ruby 3.
* [Guild Prototype - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/ko1.html#jun01)

## 型を書きたくない

**[Ruby3 Typing - RubyKaigi 2016](http://rubykaigi.org/2016/presentations/yukihiro_matz.html)**

「型は<span {style: {color: "red"}}>絶対に</span>書きたくない」

*["型は絶対書きたくない" #rubykaigi 2016 Keynote - Togetter](https://togetter.com/li/1021897)*

**[Ruby25](http://25.ruby.or.jp/schedule.html)**

「型推論、動的型付け、typescriptのように型情報を別ファイルに記載する等のIDEのコーディング支援を強化する等は検討していく。」

*[Ruby:Rubyの25周年イベント「Ruby25」に参加してきた - Madogiwa Blog](http://madogiwa0124.hatenablog.com/entry/2018/02/24/180023#Ruby%E3%81%AE%E5%9E%8B%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6)*

## 型システムに関するトーク

* [Type Checking Ruby Programs with Annotations - RubyKaigi 2017](http://rubykaigi.org/2017/presentations/soutaro.html)
* [Ruby Programming with Type Checking - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/soutaro.html#jun01)
* [A practical type system for Ruby at Stripe. - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/DarkDimius.html#may31)
* [Type Profiler: An analysis to guess type signatures - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/mametter.html#jun01)

## MRIとその他のRuby

* MRI(Matz's Ruby Interpreter): Matzが作ったオリジナルのRuby
  - C言語で作られているのでCRubyと呼ばれたりもします。
* JRuby: Javaで作られたJVMで動くRuby
* Rubinius: Rubyで作られたRuby
  - いまはすこし方向性が違う(？)
* Opal: RubyをJavaScriptに変換してブラウザで実行
* Truffle Ruby: 話題のGraalVMで動くRuby

## MRI以外のRuby実装に関するトーク

* [What would your own version of Ruby look like? - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/_st0012.html#may31)
* [extend your own programming language - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/m_seki.html#jun01)
* [Parallel and Thread-Safe Ruby at High-Speed with TruffleRuby - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/eregontp.html#jun02)
* [JRuby 9.2 and Rails 5.x - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/tom_enebo.html#jun02)

## Ruby実装のパフォーマンス

**[optcarrot](https://github.com/mame/optcarrot)**

* Rubyのベンチマークのために作られたファミコン(NES)エミュレータ

[Benchmarking a Go AI in Ruby: CRuby vs. Rubinius vs. JRuby vs. Truffle – a year later – Journeys of a young Software Engineer](https://pragtob.wordpress.com/2017/01/24/benchmarking-a-go-ai-in-ruby-cruby-vs-rubinius-vs-jruby-vs-truffle-a-year-later/)

## mruby

* MRIのサブセット
* 組込み用途向け
* 軽い小さい

## mrubyに関するトーク

* [Controlling Droids™ with mruby & Go - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/hone02.html#jun01)
* [mruby can be more lightweight - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/yuri_at_earth.html#jun01)
* [Firmware programming with mruby/c - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/hasumon.html#jun01)
* [How Ruby Survives in the Cloud Native World - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/udzura.html#jun01)
* [20k MRuby devices in production - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/scalone.html#jun01)
* [LuaJIT as a Ruby backend. - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/take-cheeze.html#jun02)
* [How happy they became with H2O/mruby, and the future of HTTP - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/i110.html#jun02)
* [Design pattern for embedding mruby into middleware - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/matsumotory.html#jun02)

## Rubyの機械学習/データサイエンスへの挑戦

* [About RubyData | RubyData](http://ruby-data.org/)
* [Red Data Tools - Rubyでデータ処理！](https://red-data-tools.github.io/ja/)
* [Schedule - RubyKaigi 2017](http://rubykaigi.org/2017/schedule#workshop)

## 機械学習に関するトーク

* [Deep Learning Programming on Ruby - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/mrkn.html#may31)
* [Fast Numerical Computing and Deep Learning in Ruby with Cumo - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/sonots.html#may31)
* [Kiba 2 - Past, present & future of data processing with Ruby - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/thibaut_barrere.html#may31)
* [High Performance GPU computing with Ruby - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/prasun_anand.html#jun02)

## その他の話題

* RuboCopの作者: [All About RuboCop - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/bbatsov.html#may31)
* [TRICK 2018 (FINAL) - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/tric.html#jun02)

## 手前味噌ですが…

* [How to get the dark power from ISeq - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/youchan.html#jun02)
* [LT - RubyKaigi 2018](http://rubykaigi.org/2018/presentations/lt/)

----

class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "RubyKaigiのプログラムから学ぶRuby最新事情")
end

def content
  [].tap do |children|
      children << p(nil, "レトリバセミナー 2018/05/30 大崎 瑶")
      children << p(nil, p({class:"chokuzen"}, img({src:"#{Gibier.assets_path}/images/chokuzen.png"}, "")))
  end
end
end

class Gibier::Page1 < Gibier::PageBase
def header
  h2(nil, "whoami")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "名前"),
                  ul(nil,
                    li(nil, "大崎 瑶(よう)")
      ),
                  li(nil, "略歴"),
                  ul(nil,
                    li(nil, "1998 - 2000 筑波大学 大学院 電子情報工学研究科 (工学修士了)"),
                    li(nil, "2009 - 2014 株式会社アプレッソ"),
                    li(nil, "2014 - 2017 株式会社ユビレジ"),
                    li(nil, "2017/11 株式会社レトリバ 入社")
      ),
                  li(nil, "趣味"),
                  ul(nil,
                    li(nil, "お酒 🍶"),
                    li(nil, "プログラミング"),
                    li(nil, "技術書の薄い本"),
                    li(nil, "電子工作")
      )
      )
      children << p(nil, p({class:"analog"}, img({src:"#{Gibier.assets_path}/images/analog.jpg"}, "")))
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def header
  h2(nil, "ちょっと宣伝")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"https://www.amazon.co.jp/Pragmatic-Opal-Ruby%E3%81%A7%E4%BD%9C%E3%82%8B%E3%83%96%E3%83%A9%E3%82%A6%E3%82%B6%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E9%96%8B%E7%99%BA%E3%82%AC%E3%82%A4%E3%83%89-%E6%8A%80%E8%A1%93%E6%9B%B8%E5%85%B8%E3%82%B7%E3%83%AA%E3%83%BC%E3%82%BA-NextPublishing/dp/4844398148/ref=sr_1_1?ie=UTF8&qid=1527649765&sr=8-1&keywords=pragmatic+opal", target:"_blank"}, "Pragmatic Opal Rubyで作るブラウザアプリケーション開発ガイド (技術書典シリーズ(NextPublishing)) | 大崎 瑶 |本 | 通販 | Amazon"))
      )
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/rubykaigi2018.png"}, "")))
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def header
  h2(nil, "RubyKaigiについて")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "RubyKaigi2018が2018/05/31(明日！）～2018/06/02で開催"),
                    li(nil, "2006年の初回から今回で12回目"),
                    li(nil, "国際カンファレンス(海外からの参加者多数)"),
                    li(nil, "今回の参加者は1000人を超えると言われています。")
      )
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def header
  h2(nil, "どんな内容？")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "Rubyの新機能の提案や紹介"),
                  ul(nil,
                    li(nil, "Rubyは国産の言語なので、Rubyのコミッター(作っている人たち)もほとんどが日本人！")
      ),
                  li(nil, "RubyのハックやHowto"),
                  ul(nil,
                    li(nil, "RubyKaigiは世界中のRubyのカンファレンスの中でもTechieなことで知られています。")
      ),
                  li(nil, "Rubyで作ったプロダクト自慢"),
                  ul(nil,
                    li(nil, "たまにRubyの別実装みたいなものも出てきます。")
      )
      )
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def header
  h2(nil, "今日のお話の目的")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "明日からはじまるRubyKaigi2018に興味を持ってもらいたい"),
                  ul(nil,
                    li(nil, "参加できなくても大丈夫！ビデオが公開されます。")
      ),
                    li(nil, "Rubyの現状と課題をRubyKaigiを通して知ってもらいたい"),
                    li(nil, "そしてRubyに興味を持ってもらいたい")
      )
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "ちょっとだけ振り返ります")
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def header
  h2(nil, span({style: {color: "red"}}, "Ruby3x3"))
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Ruby3ではRubyを",span({style: {color: "red"}}, "3倍速く"),"したい"),
                    li(nil, "並列性を扱えるようにしたい"),
                    li(nil, "型がほしい(でも型を書きたくない)")
      )
      children << p(nil, i(nil, a({href:"http://rubykaigi.org/2015/presentations/matz", target:"_blank"}, "Keynote - RubyKaigi 2015")))
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "Rubyの新機能に関するトーク")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "パフォーマンス"),
                    li(nil, "並行性"),
                    li(nil, "型システム")
      )
  end
end
end

class Gibier::Page10 < Gibier::PageBase
def header
  h2(nil, "パフォーマンス向上のための手法")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "JITコンパイル"),
                  li(nil, a({href:"http://rubykaigi.org/2017/presentations/vnmakarov.html", target:"_blank"}, "Towards Ruby 3x3 performance - RubyKaigi 2017")),
                  ul(nil,
                    li(nil, "MJIT"),
                    li(nil, "RTLというGCCのインストラクションセットをつかったJITコンパイルの手法の提案")
      ),
                    li(nil, a({href:"https://k0kubun.hatenablog.com/entry/yarv-mjit", target:"_blank"}, "VMに手を加えずRubyを高速化するJITコンパイラ「YARV-MJIT」の話 - k0kubun's blog"))
      )
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def header
  h2(nil, "パフォーマンスに関するトーク")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/k0kubun.html#jun02", target:"_blank"}, "The Method JIT Compiler for Ruby 2.6 - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/vnmakarov.html#jun02", target:"_blank"}, "Three Ruby performance projects - RubyKaigi 2018"))
      )
  end
end
end

class Gibier::Page12 < Gibier::PageBase
def header
  h2(nil, "並行性と並列性")
end

def content
  [].tap do |children|
      children << p(nil, strong(nil, "並行性(Concurrency)"))
      children << p(nil, "プログラム中の複数の処理ブロックが論理的に並行動作可能な状態。それぞれの処理ブロックは処理順序に関係なく実行することができ、共有するリソースの競合を回避することができる。")
      children << p(nil, strong(nil, "並列性(Parallelism)"))
      children << p(nil, "並行性をもつプログラムが時間的に同時に動作することが出来る複数のプロセッサによって並列に実行される状態")
      children << p(nil, i(nil, a({href:"https://qiita.com/youchan@github/items/2e5484517875d8cfd9aa", target:"_blank"}, "並行性と並列性についてオレオレ定義してみる - Qiita")))
  end
end
end

class Gibier::Page13 < Gibier::PageBase
def header
  h2(nil, "Rubyの並列性")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "GVL(or GIL)"),
                  ul(nil,
                    li(nil, "スレッドの実装にはネイティブスレッドを使っているが、同時に複数のスレッドが動作しないようにロックしている。"),
                    li(nil, "これはPythonも同じ")
      ),
                    li(nil, "Webアプリケーション(Ruby on Railなど)において高い並列性が求められることも"),
                    li(nil, "Ruby自体が速くなるわけではないが、アプリケーションの実行は速くなる可能性がある。(特に機械学習とか)"),
                    li(nil, "Rubyでは並列性を気軽に扱いたい")
      )
  end
end
end

class Gibier::Page14 < Gibier::PageBase
def header
  h2(nil, "並行性に関するトーク")
end

def content
  [].tap do |children|
      children << p(nil, strong(nil, "Guild"))
      children << ul(nil,
                  li(nil, a({href:"http://rubykaigi.org/2016/presentations/ko1.html", target:"_blank"}, "A proposal of new concurrency model for Ruby 3 - RubyKaigi 2016")),
                  ul(nil,
                    li(nil, "This presentation proposes a new concurrency model to support parallel execution for Ruby 3.")
      ),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/ko1.html#jun01", target:"_blank"}, "Guild Prototype - RubyKaigi 2018"))
      )
  end
end
end

class Gibier::Page15 < Gibier::PageBase
def header
  h2(nil, "型を書きたくない")
end

def content
  [].tap do |children|
      children << p(nil, strong(nil, a({href:"http://rubykaigi.org/2016/presentations/yukihiro_matz.html", target:"_blank"}, "Ruby3 Typing - RubyKaigi 2016")))
      children << p(nil, "「型は",span({style: {color: "red"}}, "絶対に"),"書きたくない」")
      children << p(nil, i(nil, a({href:"https://togetter.com/li/1021897", target:"_blank"}, "\"型は絶対書きたくない\" #rubykaigi 2016 Keynote - Togetter")))
      children << p(nil, strong(nil, a({href:"http://25.ruby.or.jp/schedule.html", target:"_blank"}, "Ruby25")))
      children << p(nil, "「型推論、動的型付け、typescriptのように型情報を別ファイルに記載する等のIDEのコーディング支援を強化する等は検討していく。」")
      children << p(nil, i(nil, a({href:"http://madogiwa0124.hatenablog.com/entry/2018/02/24/180023#Ruby%E3%81%AE%E5%9E%8B%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6", target:"_blank"}, "Ruby:Rubyの25周年イベント「Ruby25」に参加してきた - Madogiwa Blog")))
  end
end
end

class Gibier::Page16 < Gibier::PageBase
def header
  h2(nil, "型システムに関するトーク")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"http://rubykaigi.org/2017/presentations/soutaro.html", target:"_blank"}, "Type Checking Ruby Programs with Annotations - RubyKaigi 2017")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/soutaro.html#jun01", target:"_blank"}, "Ruby Programming with Type Checking - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/DarkDimius.html#may31", target:"_blank"}, "A practical type system for Ruby at Stripe. - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/mametter.html#jun01", target:"_blank"}, "Type Profiler: An analysis to guess type signatures - RubyKaigi 2018"))
      )
  end
end
end

class Gibier::Page17 < Gibier::PageBase
def header
  h2(nil, "MRIとその他のRuby")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "MRI(Matz's Ruby Interpreter): Matzが作ったオリジナルのRuby"),
                  ul(nil,
                    li(nil, "C言語で作られているのでCRubyと呼ばれたりもします。")
      ),
                    li(nil, "JRuby: Javaで作られたJVMで動くRuby"),
                  li(nil, "Rubinius: Rubyで作られたRuby"),
                  ul(nil,
                    li(nil, "いまはすこし方向性が違う(？)")
      ),
                    li(nil, "Opal: RubyをJavaScriptに変換してブラウザで実行"),
                    li(nil, "Truffle Ruby: 話題のGraalVMで動くRuby")
      )
  end
end
end

class Gibier::Page18 < Gibier::PageBase
def header
  h2(nil, "MRI以外のRuby実装に関するトーク")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/_st0012.html#may31", target:"_blank"}, "What would your own version of Ruby look like? - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/m_seki.html#jun01", target:"_blank"}, "extend your own programming language - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/eregontp.html#jun02", target:"_blank"}, "Parallel and Thread-Safe Ruby at High-Speed with TruffleRuby - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/tom_enebo.html#jun02", target:"_blank"}, "JRuby 9.2 and Rails 5.x - RubyKaigi 2018"))
      )
  end
end
end

class Gibier::Page19 < Gibier::PageBase
def header
  h2(nil, "Ruby実装のパフォーマンス")
end

def content
  [].tap do |children|
      children << p(nil, strong(nil, a({href:"https://github.com/mame/optcarrot", target:"_blank"}, "optcarrot")))
      children << ul(nil,
                    li(nil, "Rubyのベンチマークのために作られたファミコン(NES)エミュレータ")
      )
      children << p(nil, a({href:"https://pragtob.wordpress.com/2017/01/24/benchmarking-a-go-ai-in-ruby-cruby-vs-rubinius-vs-jruby-vs-truffle-a-year-later/", target:"_blank"}, "Benchmarking a Go AI in Ruby: CRuby vs. Rubinius vs. JRuby vs. Truffle – a year later – Journeys of a young Software Engineer"))
  end
end
end

class Gibier::Page20 < Gibier::PageBase
def header
  h2(nil, "mruby")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "MRIのサブセット"),
                    li(nil, "組込み用途向け"),
                    li(nil, "軽い小さい")
      )
  end
end
end

class Gibier::Page21 < Gibier::PageBase
def header
  h2(nil, "mrubyに関するトーク")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/hone02.html#jun01", target:"_blank"}, "Controlling Droids™ with mruby & Go - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/yuri_at_earth.html#jun01", target:"_blank"}, "mruby can be more lightweight - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/hasumon.html#jun01", target:"_blank"}, "Firmware programming with mruby/c - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/udzura.html#jun01", target:"_blank"}, "How Ruby Survives in the Cloud Native World - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/scalone.html#jun01", target:"_blank"}, "20k MRuby devices in production - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/take-cheeze.html#jun02", target:"_blank"}, "LuaJIT as a Ruby backend. - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/i110.html#jun02", target:"_blank"}, "How happy they became with H2O/mruby, and the future of HTTP - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/matsumotory.html#jun02", target:"_blank"}, "Design pattern for embedding mruby into middleware - RubyKaigi 2018"))
      )
  end
end
end

class Gibier::Page22 < Gibier::PageBase
def header
  h2(nil, "Rubyの機械学習/データサイエンスへの挑戦")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"http://ruby-data.org/", target:"_blank"}, "About RubyData | RubyData")),
                    li(nil, a({href:"https://red-data-tools.github.io/ja/", target:"_blank"}, "Red Data Tools - Rubyでデータ処理！")),
                    li(nil, a({href:"http://rubykaigi.org/2017/schedule#workshop", target:"_blank"}, "Schedule - RubyKaigi 2017"))
      )
  end
end
end

class Gibier::Page23 < Gibier::PageBase
def header
  h2(nil, "機械学習に関するトーク")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/mrkn.html#may31", target:"_blank"}, "Deep Learning Programming on Ruby - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/sonots.html#may31", target:"_blank"}, "Fast Numerical Computing and Deep Learning in Ruby with Cumo - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/thibaut_barrere.html#may31", target:"_blank"}, "Kiba 2 - Past, present & future of data processing with Ruby - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/prasun_anand.html#jun02", target:"_blank"}, "High Performance GPU computing with Ruby - RubyKaigi 2018"))
      )
  end
end
end

class Gibier::Page24 < Gibier::PageBase
def header
  h2(nil, "その他の話題")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "RuboCopの作者: ",a({href:"http://rubykaigi.org/2018/presentations/bbatsov.html#may31", target:"_blank"}, "All About RuboCop - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/tric.html#jun02", target:"_blank"}, "TRICK 2018 (FINAL) - RubyKaigi 2018"))
      )
  end
end
end

class Gibier::Page25 < Gibier::PageBase
def header
  h2(nil, "手前味噌ですが…")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/youchan.html#jun02", target:"_blank"}, "How to get the dark power from ISeq - RubyKaigi 2018")),
                    li(nil, a({href:"http://rubykaigi.org/2018/presentations/lt/", target:"_blank"}, "LT - RubyKaigi 2018"))
      )
  end
end
end

class Gibier::Page26 < Gibier::PageBase
def content
  [].tap do |children|
  end
end
end

Gibier.page_count = 27
Gibier.title = "RubyKaigiのプログラムから学ぶRuby最新事情"

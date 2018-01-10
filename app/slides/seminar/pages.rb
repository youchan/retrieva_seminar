class Gibier::Page0 < Gibier::PageBase
def content
  [].tap do |children|
      children << h1(nil, "Rubyのはじめかた")
      children << p(nil, "レトリバセミナー 2018/01/10 大崎 瑶")
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
  h2(nil, "Rubyのすすめ")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Ruby on Rails"),
                    li(nil, "手になじむ道具としての言語"),
                    li(nil, "強力なメタプログラミング"),
                    li(nil, "開発者の多くは日本人"),
                    li(nil, "コミュニティ")
      )
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def header
  h2(nil, "どういう人に向いている？")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "プログラミングの学習"),
                    li(nil, "Webプログラマ"),
                    li(nil, "システムの運用管理"),
                    li(nil, "エキスパートプログラマの第2言語として"),
                    li(nil, "実は組込みにも…")
      )
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"huge"}, strong(nil, "Let's start Ruby!"))
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def header
  h2(nil, "出発点の違い")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "プログラミングをまったく知らない初心者"),
                    li(nil, "プログラミングちょっとわかる"),
                  li(nil, "他の言語でプログラミングできる"),
                  ul(nil,
                    li(nil, strong(nil, "(a)")," 動的型付けの言語でプログラミングできる。またはWebプログラマ(ex. Python, JavaScript, Perl, etc...)"),
                    li(nil, strong(nil, "(b)")," 静的的付けの言語でプログラミングできる(ex. Java, C++, Objective-C, Swift, etc...)")
      ),
                    li(nil, "エキスパート(もちろんC言語での開発できる)")
      )
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def header
  h2(nil, "1. プログラミングをまったく知らない初心者")
end

def content
  [].tap do |children|
      children << p(nil, "あなたが運よく女性ならば...")
      children << p(nil, "=> ",a({href:"http://railsgirls.com/", target:"_blank"}, "Rails Girls"))
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def header
  h2(nil, "1. プログラミングをまったく知らない初心者")
end

def content
  [].tap do |children|
      children << p(nil, "残念ながら男性ならば...(もちろん女性の場合でも)")
      children << ul(nil,
                  li(nil, "やっぱりRailsからはじめるのはよいでしょう =>「",a({href:"http://igarashikuniaki.net/rails_textbook/", target:"_blank"}, "Railsの教科書"),"」"),
                  ul(nil,
                    li(nil, "できれば「",a({href:"https://tatsu-zine.com/books/rails-textbook", target:"_blank"}, "達人出版会版"),"」を買ってください。")
      ),
                    li(nil, "オブジェクト指向とは何なのか？ということを知りたいなら =>「",a({href:"https://www.amazon.co.jp/dp/4798134651", target:"_blank"}, "アジャイル時代のオブジェクト脳のつくり方"),"」"),
                  li(nil, "ちょっと変ったこんなのも => 「",a({href:"https://poignant.guide/", target:"_blank"}, "Why's (Poignant) Guide to Ruby"),"」"),
                  ul(nil,
                    li(nil, "日本語版もあります。「",a({href:"http://www.aoky.net/articles/why_poignant_guide_to_ruby/", target:"_blank"}, "ホワイの(感動的)Rubyガイド"),"」")
      ),
                    li(nil, "子供向けには => 「",a({href:"http://amzn.asia/85JkzoO", target:"_blank"}, "ルビィのぼうけん"),"」")
      )
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def header
  h2(nil, "2. プログラミングちょっとわかる")
end

def content
  [].tap do |children|
      children << p(nil, "または、1の後どうしたらよいか…")
      children << ul(nil,
                    li(nil, "Rails Girlsを終えた人はRails Girls Tokyo More!に行ってみてください。"),
                    li(nil, "実際に動くプログラムを書くのが一番のお勧め！題材がないという人にはこちらをどうぞ => 「",a({href:"https://www.lambdanote.com/products/ruby-ruby", target:"_blank"}, "RubyでつくるRuby ゼロから学びなおすプログラミング言語入門"),"」"),
                    li(nil, "ちょっと古いけど => 「",a({href:"http://amzn.asia/asMNfkJ", target:"_blank"}, "恋するプログラム―Rubyでつくる人工無脳"),"」"),
                    li(nil, "Rubyの入門をしましょう => 「",a({href:"http://amzn.asia/ix8iTaA", target:"_blank"}, "たのしいRuby"),"」")
      )
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "3. 他の言語でプログラミングできる")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "他言語からRubyを学ぶのにおすすめ(ちょっと古め) => 「",a({href:"https://www.amazon.co.jp/%E5%88%9D%E3%82%81%E3%81%A6%E3%81%AERuby-Yugui/dp/4873113679", target:"_blank"}, "初めてのRuby"),"」"),
                    li(nil, "プロを目指したいという人にはこちら => 「",a({href:"http://amzn.asia/iJikCEK", target:"_blank"}, "プロを目指す人のためのRuby入門"),"」")
      )
      children << p(nil, strong(nil, "(a)")," 動的言語 or Webプログラマ")
      children << ul(nil,
                    li(nil, "やっぱりRails => ",a({href:"https://railstutorial.jp/", target:"_blank"}, "Ruby on Rails チュートリアル")),
                    li(nil, "オブジェクト指向を本格的に学ぶなら => 「",a({href:"http://amzn.asia/9IXLege", target:"_blank"}, "オブジェクト指向設計実践ガイド"),"」")
      )
      children << p(nil, strong(nil, "(b)")," 静的言語")
      children << ul(nil,
                    li(nil, "Rubyの強力なメタプログラミングを学ぶなら => 「",a({href:"http://amzn.asia/3LKinbE", target:"_blank"}, "メタプログラミングRuby"),"」")
      )
  end
end
end

class Gibier::Page10 < Gibier::PageBase
def header
  h2(nil, "4. エキスパート")
end

def content
  [].tap do |children|
      children << p({className:"large"}, "好きにやってください…")
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def header
  h2(nil, "4. エキスパート(C言語での開発できる)")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Rubyを開発する"),
                  li(nil, "古いですが入口はこちら => 「",a({href:"https://ruby-hacking-guide.github.io/", target:"_blank"}, "Ruby Hacking Guide"),"」"),
                  ul(nil,
                    li(nil, "日本語版 => 「",a({href:"http://i.loveruby.net/ja/rhg/book/", target:"_blank"}, "Rubyソースコード完全解説"),"」"),
                    li(nil, a({href:"http://amzn.asia/5Ax7EWn", target:"_blank"}, "書籍"))
      ),
                    li(nil, "「",a({href:"http://amzn.asia/7p1bbkV", target:"_blank"}, "Rubyのしくみ　Ruby Under a Microscope"),"」")
      )
  end
end
end

class Gibier::Page12 < Gibier::PageBase
def header
  h2(nil, "その他")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"http://rubykaigi.org/2018", target:"_blank"}, "RubyKaigi"),"に行く"),
                  li(nil, "OSSに参加してみる"),
                  ul(nil,
                    li(nil, a({href:"https://oss-gate.github.io/", target:"_blank"}, "OSS Gate"))
      ),
                  li(nil, "地域Rubyコミュニティ"),
                  ul(nil,
                    li(nil, a({href:"https://asakusarb.esa.io/", target:"_blank"}, "Asakusa.rb"))
      )
      )
  end
end
end

class Gibier::Page13 < Gibier::PageBase
def header
  h2(nil, "MRI以外のRuby実装を触ってみる")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"http://jruby.org/", target:"_blank"}, "JRuby"),"(The Ruby Programming Language on the JVM)"),
                    li(nil, a({href:"https://rubinius.com/", target:"_blank"}, "Rubinius"),"(Rubinius is a platform for building programming languages.)"),
                    li(nil, a({href:"https://github.com/mruby/mruby", target:"_blank"}, "mruby"),"(Lightweight Ruby)"),
                    li(nil, a({href:"http://opalrb.com/", target:"_blank"}, "Opal"),"(Ruby in the Browser)")
      )
      children << p(nil, "参考: ",a({href:"https://qiita.com/takeyuweb/items/ea7b42746152f03efdaa", target:"_blank"}, "CRuby以外のRuby実装について調べたよ - Qiita"))
  end
end
end

class Gibier::Page14 < Gibier::PageBase
def header
  h2(nil, "ちなみにOpalに入門するなら")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"book"}, img({src:"#{Gibier.assets_path}/images/pragmatic-opal.png"}, "")))
      children << p({className:"small"}, a({href:"https://youchan.booth.pm/items/665611", target:"_blank"}, "BOOTH"),"にて販売しています。")
  end
end
end

class Gibier::Page15 < Gibier::PageBase
def content
  [].tap do |children|
  end
end
end

Gibier.page_count = 16
Gibier.title = "Rubyのはじめかた"

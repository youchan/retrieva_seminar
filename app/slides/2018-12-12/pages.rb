class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "黒猫先生と学ぶWord2Vec超入門")
end

def content
  [].tap do |children|
      children << p(nil, "レトリバセミナー 2018/12/12 大崎 瑶")
      children << p(nil, p({class:"shinra"}, img({src:"#{Gibier.assets_path}/images/shinra-chan.png"}, "")))
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
                    li(nil, "電子工作"),
                    li(nil, "プログラミング"),
                    li(nil, "技術書の同人誌")
      )
      )
      children << p(nil, p({class:"books"}, img({src:"#{Gibier.assets_path}/images/books.png"}, "")))
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def header
  h2(nil, "趣味のプログラミング")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "Rubyで出来ることを増やす活動"),
                  ul(nil,
                  li(nil, "Opal(A comnpiler from  Ruby to JavaScript)"),
                  ul(nil,
                    li(nil, "ブラウザで動くRuby")
      ),
                  li(nil, "Red Data Tools"),
                  ul(nil,
                    li(nil, "Rubyでデータ処理"),
                    li(nil, "Rubyで自然言語処理")
      )
      )
      )
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def header
  h2(nil, "技術書の同人誌")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "「Pragmatic Opal」"),
                    li(nil, "「ISeq探訪」"),
                    li(nil, "「猫と森羅と日本語とRuby」")
      )
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def header
  h2(nil, "猫と森羅と日本語とRuby")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"portlait-left"}, img({src:"#{Gibier.assets_path}/images/charactor.png"}, "")))
      children << p({className:"right"}, "")
      children << ul(nil,
                    li(nil, "猫: サークル名、飼い猫、自分自身"),
                    li(nil, "森羅: 森羅プロジェクト"),
                    li(nil, "日本語: 日本語自然言語処理"),
                    li(nil, "Ruby: Rubyで自然言語処理、Red Chainer")
      )
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def header
  h2(nil, "森羅プロジェクト")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/shinra.png"}, "")))
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def header
  h2(nil, "Red Chainer")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "深層学習フレームワーク"),
                    li(nil, "Chainer(Python)のRuby実装"),
                    li(nil, "CumoというGPUライブラリでGPU対応")
      )
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def header
  h2(nil, "Red Chainerで森羅プロジェクトに挑戦")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "最後まで解くことができませんでした。"),
                  li(nil, "Red Chainerにディープラーニングのアルゴリズムを実装"),
                  ul(nil,
                    li(nil, "Word2Vec"),
                    li(nil, "LSTM")
      )
      )
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def header
  h2(nil, "Word2Vec")
end

def content
  [].tap do |children|
      children << p({className:"large"}, "「王様」 - 「男」 + 「女」 = 「女王」")
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "Word2Vecのまえに自然言語処理一般の話")
end

def content
  [].tap do |children|
      children << p(nil, "誤解を恐れずに言いきると、")
      children << p({className:"large"}, "自然言語処理の多くは単語とその並び(=文章)の統計的な特徴を見つけだしてそれを応用する技術である。")
  end
end
end

class Gibier::Page10 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, "さらに誤解を恐れずに言うと、")
      children << p({className:"large"}, "深層学習は考える機械ではなく、多くの事例から見つけてきたパターンを新しい事柄に対して適用できるようにしたもの")
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"portlait notitle"}, img({src:"#{Gibier.assets_path}/images/ai_vs.jpg"}, "")))
  end
end
end

class Gibier::Page12 < Gibier::PageBase
def header
  h2(nil, "Word2Vec")
end

def content
  [].tap do |children|
      children << p({className:"large"}, "Word →  Vec(tor)")
      children << p({className:"large"}, "(単語 →  ベクトル)")
  end
end
end

class Gibier::Page13 < Gibier::PageBase
def header
  h2(nil, "「王様」 - 「男」 + 「女」 = 「女王」")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/king_queen.png"}, "")))
  end
end
end

class Gibier::Page14 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "ではWord(単語)とは何なのか？")
  end
end
end

class Gibier::Page15 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "ここで言う単語とは言語学的な単語ではない")
  end
end
end

class Gibier::Page16 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "それは統計的な量として表わす必要がある")
  end
end
end

class Gibier::Page17 < Gibier::PageBase
def header
  h2(nil, "単語の表現")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "単語ID"),
                    li(nil, "one-hotベクトル")
      )
  end
end
end

class Gibier::Page18 < Gibier::PageBase
def header
  h2(nil, "単語が4つしかない世界を想像してください")
end

def content
  [].tap do |children|
      children << p({className:"large"}, "アデニン(A) グアニン(G) シトシン(C) チミン(T)")
      children << p(nil, "知っているすべての単語のことをボキャブラリといいます")
  end
end
end

class Gibier::Page19 < Gibier::PageBase
def header
  h2(nil, "単語ID")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/ids.png"}, "")))
  end
end
end

class Gibier::Page20 < Gibier::PageBase
def header
  h2(nil, "one-hotベクトル")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/one-hot.png"}, "")))
  end
end
end

class Gibier::Page21 < Gibier::PageBase
def header
  h2(nil, "Bag of Words (BoW)")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/bow.png"}, "")))
  end
end
end

class Gibier::Page22 < Gibier::PageBase
def header
  h2(nil, "自然言語の世界")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "ボキャブラリはもっともっと大きい(何万単語になることも)"),
                    li(nil, "BoWは文章の単語数とかになる")
      )
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/large-one-hot.png"}, "")))
  end
end
end

class Gibier::Page23 < Gibier::PageBase
def header
  h2(nil, "one-hotベクトルとは何なのか？")
end

def content
  [].tap do |children|
      children << p(nil, "単語と単語の関係は解っていない")
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/li-indep.png"}, "")))
  end
end
end

class Gibier::Page24 < Gibier::PageBase
def header
  h2(nil, "線形独立")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/li-indep2.png"}, "")))
  end
end
end

class Gibier::Page25 < Gibier::PageBase
def header
  h2(nil, "単語埋め込みベクトル")
end

def content
  [].tap do |children|
      children << p(nil, "単語同士の関係をベクトルに埋め込む")
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/king_queen.png"}, "")))
  end
end
end

class Gibier::Page26 < Gibier::PageBase
def header
  h2(nil, "Word2Vec")
end

def content
  [].tap do |children|
      children << p(nil, "単語ID →  one-hotベクトル")
      children << p(nil, "単語同士の関係は独立")
      children << p(nil, "one-hotベクトル -> 単語埋め込みベクトル")
      children << p(nil, "単語同士の関係を表現")
  end
end
end

class Gibier::Page27 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "単語埋め込みベクトルはどうやって作る？")
  end
end
end

class Gibier::Page28 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "突然ですが、先日TOEICの試験を受けてきました。")
  end
end
end

class Gibier::Page29 < Gibier::PageBase
def header
  h2(nil, "穴埋め問題")
end

def content
  [].tap do |children|
      children << p(nil, code(nil, "Sean still remembers the first day [　　　] he entered the company building, excited about his future."))
      children << ul(nil,
                    li(nil, "where"),
                    li(nil, "why"),
                    li(nil, "when")
      )
  end
end
end

class Gibier::Page30 < Gibier::PageBase
def header
  h2(nil, "穴埋め問題をどう解くか？")
end

def content
  [].tap do |children|
      children << p({className:"large"}, "周辺の単語を見て決めます。")
  end
end
end

class Gibier::Page31 < Gibier::PageBase
def header
  h2(nil, "例えば女王なら")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "ロイヤルファミリー(特に家長)のことについて話しているときには、王様や女王が出てきそうです。"),
                    li(nil, "あるいはドレスやメイクといった女性特有の話題であれば、女王である確立は高まります。")
      )
      children << p(nil, p({class:"w30"}, img({src:"#{Gibier.assets_path}/images/king_queen2.png"}, "")))
  end
end
end

class Gibier::Page32 < Gibier::PageBase
def header
  h2(nil, "穴埋め問題をどうやって作るか")
end

def content
  [].tap do |children|
      children << p({className:"large"}, "たくさんの文章を集めてきて、あらゆる箇所に穴を開ければよいのです。")
  end
end
end

class Gibier::Page33 < Gibier::PageBase
def content
  [].tap do |children|
      children << h4(nil, "舞踏会の前に女王は家来に、こんなドレスじゃ踊れないわ！と言いました。")
  end
end
end

class Gibier::Page34 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, "[　　　]の前に女王は家来に、こんなドレスじゃ踊れないわ！と言いました。")
      children << p(nil, "舞踏会[　]前に女王は家来に、こんなドレスじゃ踊れないわ！と言いました。")
      children << p(nil, "舞踏会の[　]に女王は家来に、こんなドレスじゃ踊れないわ！と言いました。")
      children << p(nil, "舞踏会の前[　]女王は家来に、こんなドレスじゃ踊れないわ！と言いました。")
      children << p(nil, "舞踏会の前に[　　　]は家来に、こんなドレスじゃ踊れないわ！と言いました。")
  end
end
end

class Gibier::Page35 < Gibier::PageBase
def header
  h2(nil, "ニューラルネットワークで解く")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/neuralnet.png"}, "")))
  end
end
end

class Gibier::Page36 < Gibier::PageBase
def header
  h2(nil, "word2vec")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/word2vec.png"}, "")))
  end
end
end

class Gibier::Page37 < Gibier::PageBase
def header
  h2(nil, "まとめ")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "自然言語処理では単語同士の関係は始めから与えられているわけではない。そのため、one-hotベクトルという表現をもちいることが多い。"),
                    li(nil, "単語同士の関係を表わすために単語埋め込みベクトルというものをつくる。その手法としてWord2Vecがある。"),
                    li(nil, "Word2Vecはたくさんの文章を集めてきて穴埋め問題としてたくさん解かせた学習の結果である。")
      )
  end
end
end

class Gibier::Page38 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, "このように")
      children << p({className:"large"}, "自然言語処理の多くは単語とその並び(=文章)の統計的な特徴を見つけだしてそれを応用する技術である。")
  end
end
end

class Gibier::Page39 < Gibier::PageBase
def content
  [].tap do |children|
  end
end
end

Gibier.page_count = 40
Gibier.title = "黒猫先生と学ぶWord2Vec超入門"

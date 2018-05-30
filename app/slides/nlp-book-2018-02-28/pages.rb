class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "情報検索")
end

def content
  [].tap do |children|
      children << p(nil, "「自然言語処理」 2018/02/28 大崎 瑶")
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
  h2(nil, "agenda")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "12.1 はじめに"),
                    li(nil, "12.2 情報検索の基本的な仕組み"),
                    li(nil, "12.3 情報検索の評価"),
                    li(nil, "12.4 ウェブ検索")
      )
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def header
  h2(nil, "12.1 はじめに")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "キーワードマッチ"),
                    li(nil, "重要度を考慮した全文検索"),
                    li(nil, "ウェブ検索")
      )
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def header
  h2(nil, "12.1 はじめに")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "キーワードマッチ"),
                  ul(nil,
                    li(nil, "正規表現")
      ),
                  li(nil, "重要度を考慮した全文検索"),
                  ul(nil,
                    li(nil, "namazu, Sedue")
      ),
                  li(nil, "ウェブ検索"),
                  ul(nil,
                    li(nil, "Google")
      )
      )
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def header
  h1(nil, "12.2 情報検索の基本的な仕組み")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def header
  h2(nil, "転置インデックス")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/tenchi_index.png"}, "")))
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def header
  h2(nil, "語の重要度")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"formula"}, img({src:"#{Gibier.assets_path}/images/tf.png"}, "")))
      children << p(nil, p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/n.png"}, ""))," : 文書d内での単語tの出現回数")
      children << p(nil, p({class:"formula"}, img({src:"#{Gibier.assets_path}/images/idf.png"}, "")))
      children << ul(nil,
                    li(nil, "文章の中で出現頻度の高い単語ほど重要 (",strong(nil, "TF"),"/Term Friquency)"),
                    li(nil, "でも横断的に使われる単語は重要ではない(",strong(nil, "IDF"),"/Iverse Document Friquency)")
      )
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def header
  h2(nil, "TF/IDF法")
end

def content
  [].tap do |children|
      children << p(nil, "文書d内での単語tの重要度を以下のように表す")
      children << p(nil, p({class:"formula2"}, img({src:"#{Gibier.assets_path}/images/tf-idf.png"}, "")))
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "ベクトル空間モデル")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page10 < Gibier::PageBase
def header
  h1(nil, "12.3 情報検索の評価")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def header
  h1(nil, "12.4 ウェブ検索")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page12 < Gibier::PageBase
def content
  [].tap do |children|
  end
end
end

Gibier.page_count = 13
Gibier.title = "12.4 ウェブ検索"

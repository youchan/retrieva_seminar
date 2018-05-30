class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "自然言語処理 第6章 意味の解析(1)")
end

def content
  [].tap do |children|
      children << p(nil, "株式会社レトリバ 大崎 瑶")
  end
end
end

class Gibier::Page1 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"huge"}, "6.1 語の意味")
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def header
  h2(nil, "6.1.1 語の意味の定義")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def header
  h2(nil, "6.1.2 語の創造的使用")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def header
  h2(nil, "6.1.3 シソーラス")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"huge"}, "6.2 同義性")
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def header
  h2(nil, "同義性と多義性")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/synonymy_polysemy.png"}, "")))
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def header
  h2(nil, "6.2.1 同義語")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def header
  h2(nil, "6.2.2 分布類似度")
end

def content
  [].tap do |children|
      children << p(nil, strong(nil, "自己相互情報量"))
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "類似度の尺度")
end

def content
  [].tap do |children|
      children << p(nil, strong(nil, "Jaccard 係数"))
      children << p(nil, strong(nil, "Simpson 係数"))
      children << p(nil, strong(nil, "Dice 係数"))
  end
end
end

class Gibier::Page10 < Gibier::PageBase
def header
  h2(nil, "Jaccard 係数")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/jaccard.png"}, "")))
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def header
  h2(nil, "Simpson 係数")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/simpson.png"}, "")))
  end
end
end

class Gibier::Page12 < Gibier::PageBase
def header
  h2(nil, "Dice 係数")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/dice.png"}, "")))
  end
end
end

class Gibier::Page13 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"huge"}, "6.3 多義性")
  end
end
end

class Gibier::Page14 < Gibier::PageBase
def header
  h2(nil, "6.3.1 多義語")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page15 < Gibier::PageBase
def header
  h2(nil, "6.3.2 語義曖昧性解消")
end

def content
  [].tap do |children|
  end
end
end

class Gibier::Page16 < Gibier::PageBase
def content
  [].tap do |children|
  end
end
end

Gibier.page_count = 17
Gibier.title = "自然言語処理 第6章 意味の解析(1)"

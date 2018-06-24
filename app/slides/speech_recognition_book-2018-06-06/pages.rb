class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "第8章 音声の認識：言語モデル")
end

def content
  [].tap do |children|
      children << p(nil, "イラストで学ぶ音声認識 2018/06/06 大崎 瑶")
  end
end
end

class Gibier::Page1 < Gibier::PageBase
def header
  h2(nil, "もくじ")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "8.1 文法記述による言語モデル"),
                    li(nil, "8.2 統計的言語モデルの考え方"),
                    li(nil, "8.3 統計的言語モデルの作り方")
      )
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def header
  h2(nil, "言語モデル")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/p_w.png"}, ""))," を計算するためのモデル(",p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/w.png"}, "")),"は単語列)")
      children << ul(nil,
                    li(nil, "文法規則によって入力を制限する方法"),
                    li(nil, "確率的言語モデルを用いて推定する方法")
      )
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def header
  h2(nil, "8.1 文法記述による言語モデル")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "規則に従う単語列であれば ",p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/p_w_gt_zero.png"}, ""))),
                    li(nil, "そうでなければ ",p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/p_w_eq_zero.png"}, "")))
      )
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def header
  h2(nil, "正規文法(第4章)")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/phi.png"}, "")),"(空集合)"),
                    li(nil, "すべての",p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/char.png"}, "")),"に対して",p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/chars.png"}, ""))),
                  li(nil, p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/alpha_beta.png"}, "")),"が正規言語"),
                  ul(nil,
                    li(nil, "連接 ",p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/concat.png"}, ""))),
                    li(nil, "選択 ",p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/select.png"}, ""))),
                    li(nil, "繰り返し ",p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/repeat.png"}, "")))
      )
      )
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def header
  h2(nil, "終端記号と非終端記号")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/regular.png"}, "")))
      children << p(nil, "a,ε => 終端記号 / A,B => 非終端記号")
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/example.png"}, "")))
      children << p(nil, "その他の文脈自由文法でないものの例: プログラミング言語")
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def header
  h2(nil, "統計的言語モデル")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "単語列 ",p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/word_list.png"}, ""))),
                    li(nil, "生成確率 ",p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/p_w.png"}, "")))
      )
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/total_score.png"}, "")))
      children << p(nil, "音響モデルで高いスコアを与えられたとしても、言語モデルで低いスコアの場合には総合的に低いスコアになる。(文法的に正しくないものはスコアが低くなる)")
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def header
  h2(nil, "Nグラム言語モデル")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "統計的言語モデル"),
                  ul(nil,
                    li(nil, "P(W) = P(w1 ,...,wn) の値を言語統計から求める"),
                    li(nil, "条件付き確率への展開"),
                    li(nil, p({class:"inline"}, img({src:"#{Gibier.assets_path}/images/eq1.png"}, "")))
      ),
                  li(nil, "N-グラム言語モデル"),
                  ul(nil,
                    li(nil, "長い履歴を持つ条件付き確率の値の推定は難しい"),
                    li(nil, "履歴を、過去N-1単語で近似"),
                    li(nil, p({class:"inline2"}, img({src:"#{Gibier.assets_path}/images/eq2.png"}, "")))
      )
      )
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "統計的言語モデルの作り方")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "コーパスを準備する"),
                  ul(nil,
                    li(nil, "大量の電子化された文章（新聞記事、webページなど）を集める")
      ),
                  li(nil, "コーパスを単語に区切る"),
                  ul(nil,
                    li(nil, "形態素解析処理")
      ),
                  li(nil, "条件付き確率を求める"),
                  ul(nil,
                    li(nil, "確率の推定値が0にならないよう工夫したうえで P(wk | wk-N+1,...,wk-1) を求める")
      )
      )
  end
end
end

class Gibier::Page10 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/language_model.png"}, "")))
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def header
  h2(nil, "出現しない単語に対する問題")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "N-グラムを最尤推定するときの問題点"),
                  ul(nil,
                    li(nil, "例）2-グラムの単純な最尤推定"),
                    li(nil, "コーパス中に wi-1 wi が1度も出現しなければ、この値は0"),
                    li(nil, "単語列中に値0の2-グラムが1つでもあれば、全体の確率が0")
      ),
                  li(nil, "バックオフスムージング"),
                  ul(nil,
                    li(nil, "最尤推定したN-グラムのうち、確率0でないものから少しずつ値を削り、確率0のものに分配する")
      )
      )
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
Gibier.title = "第8章 音声の認識：言語モデル"

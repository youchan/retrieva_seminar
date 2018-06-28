class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "はじめに ～ ",s(nil, "MEMM")," Vitabiアルゴリズム")
end

def content
  [].tap do |children|
      children << p(nil, "構文解析 2018/06/27 大崎 瑶")
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
                    li(nil, "構文解析とは"),
                    li(nil, "品詞タグ付け"),
                  li(nil, "隠れマルコフモデル"),
                  ul(nil,
                    li(nil, "確率モデル"),
                    li(nil, "Viterbiアルゴリズム")
      ),
                    li(nil, s(nil, "最大エントリピーモデル")),
                    li(nil, s(nil, "最大エントリピーマルコフモデル"))
      )
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def header
  h2(nil, "構文解析とは")
end

def content
  [].tap do |children|
      children << p({className:"left"}, "")
      children << p(nil, strong(nil, "構文構造"))
      children << ul(nil,
                    li(nil, "句構造"),
                    li(nil, "依存構造"),
                  li(nil, "「深い」構文構造"),
                  ul(nil,
                    li(nil, "述語項構造"),
                    li(nil, "意味役割り")
      )
      )
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def header
  h3(nil, "for Example")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "The kid ate the cake."),
                    li(nil, "The cake was eaten by the kid."),
                    li(nil, "I miss the cake eaten by the kid.")
      )
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "2.1 品詞解析の役割")
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def header
  h2(nil, "品詞タグ付け")
end

def content
  [].tap do |children|
      children << p(nil, "This/D is/V a/D big/A city/N")
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def header
  h2(nil, "Penn Treebank")
end

def content
  [].tap do |children|
      children << p(nil, "タグ付きのコーパス")
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/ptb.png"}, "")))
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "2.2 機械学習による品詞タグ付け")
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def header
  h2(nil, "品詞のあいまい性")
end

def content
  [].tap do |children|
      children << p(nil, "We should ",span({style:{background:"khaki"}}, "bear")," in mind that ",span({style:{background:"khaki"}}, "bear")," is a wild animal.")
      children << ul(nil,
                  li(nil, "ルールベースの手法"),
                  ul(nil,
                    li(nil, "shouldの直後には動詞が入るなど")
      ),
                    li(nil, "機械学習")
      )
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "学習データ")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "学習データ"),
                    li(nil, "評価データ"),
                    li(nil, "開発データ")
      )
  end
end
end

class Gibier::Page10 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "2.3 隠れマルコフモデル")
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def header
  h2(nil, "確率モデル")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/most_suited_pos.png"}, "")))
      children << code({ dangerouslySetInnerHTML: { __html: %q{<!--
\begin{align*}
    \newcommand{\argmax}{\mathop{\rm arg~max}\limits}
    \mathbf{T}_{best}(\mathbf{W}) = \argmax_{\mathbf{T}} P(\mathbf{T} | \mathbf{W})
\end{align*}
-->
} } })
  end
end
end

class Gibier::Page12 < Gibier::PageBase
def header
  h2(nil, "例題")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/4x4ways.png"}, "")))
      children << code({ dangerouslySetInnerHTML: { __html: %q{<!--
    &P(N,N,N,N|Then,saw,a,bear)&\\
    &P(V,N,N,N|Then,saw,a,bear)&\\
    &P(A,N,N,N|Then,saw,a,bear)&\\
    &P(D,N,N,N|Then,saw,a,bear)&\\
    &P(N,V,N,N|Then,saw,a,bear)&\\
    &\vdots&
-->
} } })
      children << p(nil, "They saw a bear => n = 4")
      children << p(nil, "N:名詞 V:動詞 A:形容詞 D:限定詞")
      children << p(nil, "4 ^ 4 = 256通り")
  end
end
end

class Gibier::Page13 < Gibier::PageBase
def header
  h2(nil, "ナイーブな推定方法")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/P_q_r.png"}, "")))
  end
end
end

class Gibier::Page14 < Gibier::PageBase
def header
  h2(nil, "学習データ例")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/training_data.jpg"}, "")))
  end
end
end

class Gibier::Page15 < Gibier::PageBase
def header
  h2(nil, "データスパースネス")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/count_they_saw_a_bear.png"}, "")))
      children << p(nil, "=> 単語列まとめて確率を推定するのではなく、分解して確率の積の形にする。")
  end
end
end

class Gibier::Page16 < Gibier::PageBase
def header
  h2(nil, "ベイズの定理")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/bayes.png"}, "")))
      children << code({ dangerouslySetInnerHTML: { __html: %q{<!--
\begin{eqnarray*}
    P(\mathbf{T}|\mathbf{W}) = \frac{P(\mathbf{W},\mathbf{T})}{P(\mathbf{W})}
\end{eqnarray*}
-->
} } })
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/bayes2.png"}, "")))
      children << code({ dangerouslySetInnerHTML: { __html: %q{<!--
\newcommand{\argmax}{\mathop{\rm arg~max}\limits}
\begin{eqnarray*}
    {\argmax_{\mathbf{T}}{P(\mathbf{T}|\mathbf{W})}} & = & {\argmax_{\mathbf{T}}{ \frac{P(\mathbf{W},\mathbf{T})}{P(\mathbf{W})}}}\\
    & = & \argmax_{\mathbf{T}} P(\mathbf{W},\mathbf{T})
\end{eqnarray*}
-->
} } })
  end
end
end

class Gibier::Page17 < Gibier::PageBase
def header
  h2(nil, "チェインルール")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/chain_rule.png"}, "")))
      children << code({ dangerouslySetInnerHTML: { __html: %q{<!--
\newcommand{\argmax}{\mathop{\rm arg~max}\limits}
\begin{eqnarray*}
    P(\mathbf{W},\mathbf{T}) &=& P(w_1,\ldots,w_n,t_1,\ldots,t_n)\\
    &=& P(t_1)P(w_1,\ldots,w_n,t_2,\ldots,t_n|t_1)\\
    &=& P(t_1)P(w_1|t_1)P(w_2,\ldots,w_n,t_2,\ldots,t_n|t_1,w_1)\\
    &=& P(t_1)P(w_1|t_1)P(t_2|t_1,w_1)P(w_2,\ldots,w_n,t_3,\ldots,t_n|t_1,t_2,w_1)\\
    &=& \prod_{i=1}^{n}P(t_i|t_1^{i-1},w_1^{i-1})P(w_i|t_1^i,w_1^{i-1})
\end{eqnarray*}
-->
} } })
  end
end
end

class Gibier::Page18 < Gibier::PageBase
def header
  h2(nil, "大胆な仮説")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/eq26.jpg"}, "")))
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/eq27.jpg"}, "")))
  end
end
end

class Gibier::Page19 < Gibier::PageBase
def header
  h2(nil, "各単語の条件付き確率")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/eq28.jpg"}, "")))
  end
end
end

class Gibier::Page20 < Gibier::PageBase
def header
  h2(nil, "例題")
end

def content
  [].tap do |children|
      children << p(nil, "They/N saw/V a/D bear/N")
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/answer.jpg"}, "")))
  end
end
end

class Gibier::Page21 < Gibier::PageBase
def header
  h2(nil, "品詞BOS/EOS")
end

def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/eq212.jpg"}, "")))
  end
end
end

class Gibier::Page22 < Gibier::PageBase
def header
  h2(nil, "Vitabiアルゴリズム")
end

def content
  [].tap do |children|
      children << p(nil, "デコーディングの一種で系列を出力する問題に利用される代表的なアルゴリズム")
      children << p(nil, p({class:"w50"}, img({src:"#{Gibier.assets_path}/images/lattice.jpg"}, "")))
  end
end
end

class Gibier::Page23 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:""}, img({src:"#{Gibier.assets_path}/images/eq213.jpg"}, "")))
  end
end
end

class Gibier::Page24 < Gibier::PageBase
def header
  h2(nil, "ラティスの探索")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"w50"}, img({src:"#{Gibier.assets_path}/images/fig22.jpg"}, "")))
      children << p(nil, "動的計画法を使って探索する")
      children << ul(nil,
                    li(nil, "(BOSから2列目のNに至る最短経路長) + (2列目のNから3列目のNまでの距離)"),
                    li(nil, "(BOSから2列目のVに至る最短経路長) + (2列目のVから3列目のNまでの距離)"),
                    li(nil, "...")
      )
  end
end
end

class Gibier::Page25 < Gibier::PageBase
def header
  h2(nil, "アルゴリズム")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"w50"}, img({src:"#{Gibier.assets_path}/images/fig23.jpg"}, "")))
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
Gibier.title = "はじめに ～ <s>MEMM</s> Vitabiアルゴリズム"

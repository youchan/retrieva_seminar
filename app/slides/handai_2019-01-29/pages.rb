class Gibier::Page0 < Gibier::PageBase
def header
  h1(nil, "自然言語処理研究者に向けるRubyのススメ")
end

def content
  [].tap do |children|
      children << p({className:"author"}, "大崎 瑶")
      children << p(nil, p({class:"icon"}, img({src:"#{Gibier.assets_path}/images/youchan.jpg"}, "")))
  end
end
end

class Gibier::Page1 < Gibier::PageBase
def header
  h2(nil, "Who am I?")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "大崎 瑶(よう)"),
                    li(nil, "株式会社レトリバ"),
                    li(nil, "@youchan"),
                    li(nil, "Rubyist")
      )
  end
end
end

class Gibier::Page2 < Gibier::PageBase
def header
  h2(nil, "Rubyist")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Rubyが好きです。"),
                    li(nil, "なので、Rubyで出来ることをもっと増やしたい！"),
                  li(nil, "具体的には以下の2つ事柄に対して活動をしています。"),
                  ul(nil,
                    li(nil, "Opal(Ruby to JavaScript compiler)"),
                    li(nil, "自然言語処理")
      )
      )
  end
end
end

class Gibier::Page3 < Gibier::PageBase
def header
  h2(nil, "Opal")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, strong(nil, "silica"),": A rapid development tools for Hyalite & Menilite"),
                    li(nil, strong(nil, "hyalite"),": A Ruby implemented Virtual DOM written in Opal"),
                    li(nil, strong(nil, "menilite"),": An isomophic web programming framework in Ruby"),
                    li(nil, strong(nil, "drb-websocket"),": A druby protocol via WebSocket"),
                    li(nil, strong(nil, "opal-drb"),": A druby implementation runable on browser.")
      )
  end
end
end

class Gibier::Page4 < Gibier::PageBase
def header
  h2(nil, "Opal")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, a({href:"https://rubyconf.org/program#session-694", target:"_blank"}, "Building web-based board games only with Ruby"))
      )
  end
end
end

class Gibier::Page5 < Gibier::PageBase
def header
  h2(nil, "Books")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/books.png"}, "")))
  end
end
end

class Gibier::Page6 < Gibier::PageBase
def header
  h2(nil, "なぜこの話をするのか？")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "機械学習や自然言語処理するならPython?"),
                    li(nil, "他に選択肢があってもよいのでは？"),
                  li(nil, "Rubyもよいところはある"),
                  ul(nil,
                    li(nil, "日本人が開発している言語なので日本語の自然言語処理に可能性"),
                    li(nil, "やることがたくさんある")
      )
      )
  end
end
end

class Gibier::Page7 < Gibier::PageBase
def header
  h2(nil, "Agenda")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Rubyとは何なのか？"),
                    li(nil, "Rubyのよいところ"),
                    li(nil, "Rubyの最新事情"),
                    li(nil, "Rubyと自然言語処理"),
                    li(nil, "Rubyとコミュニティ")
      )
  end
end
end

class Gibier::Page8 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Rubyとは何なのか？")
  end
end
end

class Gibier::Page9 < Gibier::PageBase
def header
  h2(nil, "Rubyの生いたち")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "1993年2月24日まつもとゆきひろ(Matz)によって開発された"),
                    li(nil, "Perlのような使いやすさにオブジェクト指向をプラスしたスクリプト言語"),
                    li(nil, "1.9でYARVが搭載される"),
                    li(nil, "Ruby on Railsの登場により一躍Web開発のメジャー言語になる"),
                    li(nil, "2.6でJITコンパイラが搭載される")
      )
  end
end
end

class Gibier::Page10 < Gibier::PageBase
def header
  h2(nil, "Rubyの特徴")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "オブジェクト指向"),
                    li(nil, "動的型付け"),
                    li(nil, "世代別GC")
      )
  end
end
end

class Gibier::Page11 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Rubyのよいところ")
  end
end
end

class Gibier::Page12 < Gibier::PageBase
def header
  h2(nil, "Rubyのよいところ")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "楽しい！"),
                    li(nil, "実行時に何でもできるダイナミックさ"),
                    li(nil, "文字列操作"),
                    li(nil, "コミュニティ"),
                    li(nil, "Rubyのよくないところ")
      )
  end
end
end

class Gibier::Page13 < Gibier::PageBase
def header
  h2(nil, "楽しい！")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "日本人的なおもてなし"),
                  ul(nil,
                    li(nil, "標準ライブラリ"),
                    li(nil, "ブロック")
      ),
                  li(nil, "TMTOWTDI(There's More Than One Way To Do It)"),
                  ul(nil,
                    li(nil, "Diversity is Good")
      ),
                    li(nil, "オブジェクト指向のこだわり")
      )
  end
end
end

class Gibier::Page14 < Gibier::PageBase
def header
  h2(nil, "ブロック")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "メソッドの引数に処理を渡すことができる"),
                  ul(nil,
                    li(nil, "関数型言語ならあたりまえ？！")
      ),
                    li(nil, "RubyはLispに強く影響を受けている")
      )
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3</pre></td><td class="code"><pre><span class="n">array</span><span class="p">.</span><span class="nf">reduce</span> <span class="k">do</span> <span class="o">|</span><span class="n">acc</span><span class="p">,</span> <span class="n">i</span><span class="o">|</span>
  <span class="n">acc</span> <span class="o">+</span> <span class="n">i</span>
<span class="k">end</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page15 < Gibier::PageBase
def header
  h2(nil, "ブロック(2)")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "引数で渡されたブロックは",code(nil, "yield"),"で呼びだすことができる")
      )
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5</pre></td><td class="code"><pre><span class="k">def</span> <span class="nf">tokenize</span><span class="p">(</span><span class="n">str</span><span class="p">)</span>
  <span class="n">str</span><span class="p">.</span><span class="nf">split</span><span class="p">.</span><span class="nf">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">word</span><span class="o">|</span>
    <span class="k">yield</span> <span class="n">word</span>
  <span class="k">end</span>
<span class="k">end</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page16 < Gibier::PageBase
def header
  h2(nil, "TMTOWTDI")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "There's More Than One Way To Do It")
      )
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7</pre></td><td class="code"><pre><span class="n">array</span><span class="p">.</span><span class="nf">reduce</span> <span class="k">do</span> <span class="o">|</span><span class="n">acc</span><span class="p">,</span> <span class="n">i</span><span class="o">|</span>
  <span class="n">acc</span> <span class="o">+</span> <span class="n">i</span>
<span class="k">end</span>

<span class="n">array</span><span class="p">.</span><span class="nf">reduce</span><span class="p">(</span><span class="o">&amp;</span><span class="p">:</span><span class="o">+</span><span class="p">)</span>

<span class="n">array</span><span class="p">.</span><span class="nf">sum</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page17 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "オブジェクト指向のこだわり")
  end
end
end

class Gibier::Page18 < Gibier::PageBase
def header
  h2(nil, "オブジェクト指向のこだわり(その1)")
end

def content
  [].tap do |children|
      children << p({className:"huge"}, "数値もオブジェクト")
  end
end
end

class Gibier::Page19 < Gibier::PageBase
def header
  h2(nil, "オブジェクト指向のこだわり(その2)")
end

def content
  [].tap do |children|
      children << p({className:"huge"}, "クラスだってオブジェクト")
  end
end
end

class Gibier::Page20 < Gibier::PageBase
def header
  h2(nil, "実行時に何でもできるダイナミックさ")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "メタプログラミング"),
                    li(nil, "DSL"),
                    li(nil, "ASTさえも覗ける")
      )
  end
end
end

class Gibier::Page21 < Gibier::PageBase
def header
  h2(nil, "メタプログラミング")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "クラスも書き換えられる柔軟さ => オープンクラス"),
                  ul(nil,
                    li(nil, strong(nil, "ex.")," active-support"),
                    li(nil, "refinementで影響範囲を限定することもできる")
      ),
                    li(nil, "eval")
      )
  end
end
end

class Gibier::Page22 < Gibier::PageBase
def header
  h2(nil, "オープンクラス")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7</pre></td><td class="code"><pre><span class="k">class</span> <span class="nc">String</span>
  <span class="k">def</span> <span class="nf">tokenize</span>
    <span class="nb">self</span><span class="p">.</span><span class="nf">split</span><span class="p">.</span><span class="nf">each</span> <span class="k">do</span> <span class="o">|</span><span class="n">word</span><span class="o">|</span>
      <span class="k">yield</span> <span class="n">word</span>
    <span class="k">end</span>
  <span class="k">end</span>
<span class="k">end</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page23 < Gibier::PageBase
def header
  h2(nil, "active-support")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4</pre></td><td class="code"><pre><span class="nb">require</span> <span class="s1">'active_support'</span>
<span class="nb">require</span> <span class="s1">'active_support/core_ext'</span>

<span class="no">Date</span><span class="p">.</span><span class="nf">today</span> <span class="o">-</span> <span class="mi">7</span><span class="p">.</span><span class="nf">days</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page24 < Gibier::PageBase
def header
  h2(nil, "eval")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, code(nil, "instance_eval"),"をつかうと便利")
      )
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4</pre></td><td class="code"><pre><span class="nb">require</span> <span class="s1">'natto'</span>
<span class="no">Natto</span><span class="o">::</span><span class="no">MeCab</span><span class="p">.</span><span class="nf">new</span><span class="p">.</span><span class="nf">instance_eval</span> <span class="k">do</span>
  <span class="n">parse</span> <span class="s2">"すもももももももものうち"</span>
<span class="k">end</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page25 < Gibier::PageBase
def header
  h2(nil, "DSL")
end

def content
  [].tap do |children|
      children << p(nil, strong(nil, "RSpec"))
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1
2
3
4
5
6
7
8
9</pre></td><td class="code"><pre><span class="no">RSpec</span><span class="p">.</span><span class="nf">describe</span> <span class="no">Game</span> <span class="k">do</span>
  <span class="n">describe</span> <span class="s2">"#score"</span> <span class="k">do</span>
    <span class="n">it</span> <span class="s2">"returns 0 for an all gutter game"</span> <span class="k">do</span>
      <span class="n">game</span> <span class="o">=</span> <span class="no">Game</span><span class="p">.</span><span class="nf">new</span>
      <span class="mi">20</span><span class="p">.</span><span class="nf">times</span> <span class="p">{</span> <span class="n">game</span><span class="p">.</span><span class="nf">roll</span><span class="p">(</span><span class="mi">0</span><span class="p">)</span> <span class="p">}</span>
      <span class="n">expect</span><span class="p">(</span><span class="n">game</span><span class="p">.</span><span class="nf">score</span><span class="p">).</span><span class="nf">to</span> <span class="n">eq</span><span class="p">(</span><span class="mi">0</span><span class="p">)</span>
    <span class="k">end</span>
  <span class="k">end</span>
<span class="k">end</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page26 < Gibier::PageBase
def header
  h2(nil, "ASTさえも覗ける")
end

def content
  [].tap do |children|
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1</pre></td><td class="code"><pre><span class="no">RubyVM</span><span class="o">::</span><span class="no">AbstractSyntaxTree</span><span class="p">.</span><span class="nf">parse</span><span class="p">(</span><span class="s2">"1 + 2 * 3"</span><span class="p">)</span>
</pre></td></tr></tbody></table>
</div>
} } })
      children << p({className:"small"}, a({href:"https://techlife.cookpad.com/entry/2018/12/25/110240", target:"_brank"}, "https://techlife.cookpad.com/entry/2018/12/25/110240"))
  end
end
end

class Gibier::Page27 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/chainer-compiler.png"}, "")))
      children << p({className:"small"}, a({href:"https://research.preferred.jp/2019/01/chainer%E3%83%A2%E3%83%87%E3%83%AB%E3%81%AE%E3%81%95%E3%82%89%E3%81%AA%E3%82%8B%E9%AB%98%E9%80%9F%E5%8C%96%E3%80%81%E3%83%87%E3%83%97%E3%83%AD%E3%82%A4%E3%81%AE%E7%B0%A1%E4%BE%BF%E5%8C%96%E3%80%81/", target:"_blank"}, "https://research.preferred.jp/2019/01/chainerモデルのさらなる高速化、デプロイの簡便化、/"))
  end
end
end

class Gibier::Page28 < Gibier::PageBase
def header
  h2(nil, "文字列操作")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "CSI方式"),
                  li(nil, "正規表現"),
                  ul(nil,
                    li(nil, "正規表現リテラル"),
                    li(nil, "Onigumo")
      )
      )
  end
end
end

class Gibier::Page29 < Gibier::PageBase
def header
  h2(nil, "CSI方式")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/csi.png"}, "")))
  end
end
end

class Gibier::Page30 < Gibier::PageBase
def header
  h2(nil, "正規表現")
end

def content
  [].tap do |children|
      children << p(nil, strong(nil, "正規表現リテラル"))
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1</pre></td><td class="code"><pre><span class="sr">/T[\w']+ M\w+ T\w+ O\w+ W\w+ T\w+ D\w+ I\w+/</span> <span class="o">=~</span> <span class="s2">"There's More Than One Way To Do It"</span>
</pre></td></tr></tbody></table>
</div>
} } })
      children << p(nil, strong(nil, "カタカナ"))
      children << code({ dangerouslySetInnerHTML: { __html: %q{<div class="highlight"><table style="border-spacing: 0"><tbody><tr><td class="gutter gl" style="text-align: right"><pre class="lineno">1</pre></td><td class="code"><pre><span class="sr">/\p{katakana}+/</span><span class="p">.</span><span class="nf">match</span><span class="p">(</span><span class="s2">"Rubyのススメ"</span><span class="p">)</span>
</pre></td></tr></tbody></table>
</div>
} } })
  end
end
end

class Gibier::Page31 < Gibier::PageBase
def header
  h2(nil, "コミュニティ")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Rubyの開発者の多くが日本人"),
                    li(nil, "地域コミュニティ活動が活発"),
                    li(nil, "日本最大級の言語系カンファレンス: ",strong(nil, "RubyKaigi"))
      )
  end
end
end

class Gibier::Page32 < Gibier::PageBase
def header
  h2(nil, "Rubyのよくないところ")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "いろいろな書きかたができる"),
                    li(nil, "なんでもオブジェクト"),
                    li(nil, "CSI方式"),
                    li(nil, "ダイナミックすぎ")
      )
  end
end
end

class Gibier::Page33 < Gibier::PageBase
def header
  h2(nil, "Break time")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/cats.png"}, "")))
  end
end
end

class Gibier::Page34 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Rubyの最新事情")
  end
end
end

class Gibier::Page35 < Gibier::PageBase
def header
  h2(nil, "Ruby3x3")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "2015年のRubyConf,RubyKaigiでMatzが宣言"),
                    li(nil, "Ruby3.0では3倍早くする(何と比較して？ => Ruby2.0)"),
                    li(nil, "JIT compile"),
                    li(nil, "Parallelism"),
                    li(nil, "Typing")
      )
  end
end
end

class Gibier::Page36 < Gibier::PageBase
def header
  h2(nil, "JIT compile")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "MJIT"),
                    li(nil, "Ruby2.6の新機能としてオプションで利用可能")
      )
  end
end
end

class Gibier::Page37 < Gibier::PageBase
def header
  h2(nil, "Parallelism")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "Guild"),
                    li(nil, "まだまだ議論している")
      )
  end
end
end

class Gibier::Page38 < Gibier::PageBase
def header
  h2(nil, "Typing")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "Steep"),
                  ul(nil,
                    li(nil, "Gradual Typing")
      ),
                    li(nil, "Stripe"),
                    li(nil, "Type Profiler")
      )
  end
end
end

class Gibier::Page39 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Rubyと自然言語処理")
  end
end
end

class Gibier::Page40 < Gibier::PageBase
def header
  h2(nil, "Rubyと自然言語処理")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "現状確認"),
                    li(nil, "red-chainer")
      )
  end
end
end

class Gibier::Page41 < Gibier::PageBase
def header
  h2(nil, "現状確認")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "数値計算 => Numo::Narray, cumo"),
                    li(nil, "Deep Learning => mxnet.rb, tensorflow.rb, RedChainer"),
                  li(nil, "自然言語処理 => treat, open-nlp, stanford-core-nlp"),
                  ul(nil,
                    li(nil, a({href:"https://github.com/arbox/nlp-with-ruby", target:"_brank"}, "https://github.com/arbox/nlp-with-ruby"))
      )
      )
  end
end
end

class Gibier::Page42 < Gibier::PageBase
def header
  h2(nil, "機械学習領域での対応状況")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"w90"}, img({src:"#{Gibier.assets_path}/images/ml.png"}, "")))
      children << p({className:"small"}, "RubyKaigi2018: \"Fast Numerical Computing and Deep Learning in Ruby with Cumo\"")
      children << p({className:"small"}, a({href:"https://speakerdeck.com/sonots/fast-numerical-computing-and-deep-learning-in-ruby-with-cumo?slide=6", target:"_brank"}, "https://speakerdeck.com/sonots/fast-numerical-computing-and-deep-learning-in-ruby-with-cumo?slide=6"))
  end
end
end

class Gibier::Page43 < Gibier::PageBase
def header
  h2(nil, "自然言語処理")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "treat"),
                  ul(nil,
                    li(nil, a({href:"https://github.com/louismullie/treat/wiki/Quick-Tour", target:"_brank"}, "https://github.com/louismullie/treat/wiki/Quick-Tour"))
      ),
                    li(nil, "open-nlp"),
                    li(nil, "stanford-core-nlp"),
                    li(nil, "nlp-pure")
      )
      children << p(nil, "基本的にOpenNLPやStanford CoreNLPなどのバインディングだけど、",br(nil, ""),"pure rubyの実装もある")
  end
end
end

class Gibier::Page44 < Gibier::PageBase
def header
  h2(nil, "RedChainer")
end

def content
  [].tap do |children|
      children << ul(nil,
                    li(nil, "ChainerのRuby版"),
                  li(nil, "自然言語処理はword2vecとLSTMの実装のマージ作業中"),
                  ul(nil,
                    li(nil, a({href:"https://github.com/youchan/red-chainer/tree/lstm", target:"_brank"}, "https://github.com/youchan/red-chainer/tree/lstm"))
      )
      )
  end
end
end

class Gibier::Page45 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "Rubyとコミュニティ")
  end
end
end

class Gibier::Page46 < Gibier::PageBase
def header
  h2(nil, "Rubyとコミュニティ")
end

def content
  [].tap do |children|
      children << ul(nil,
                  li(nil, "Rubyコミッターの大部分は日本人"),
                  ul(nil,
                    li(nil, "(日本の)Rubyのコミュニティに行くとコミッターがいる！")
      ),
                    li(nil, "RubyKaigi"),
                    li(nil, "オープンソースコミュニティ")
      )
  end
end
end

class Gibier::Page47 < Gibier::PageBase
def content
  [].tap do |children|
      children << p(nil, p({class:"middle"}, img({src:"#{Gibier.assets_path}/images/asakusarb.png"}, "")))
      children << p({className:"small"}, a({href:"https://asakusarb.esa.io/", target:"_brank"}, "https://asakusarb.esa.io/"))
  end
end
end

class Gibier::Page48 < Gibier::PageBase
def header
  h2(nil, "RubyKaigi")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"large"}, img({src:"#{Gibier.assets_path}/images/committers.jpg"}, "")))
  end
end
end

class Gibier::Page49 < Gibier::PageBase
def header
  h2(nil, "OSS-Gate")
end

def content
  [].tap do |children|
      children << p(nil, p({class:"w90"}, img({src:"#{Gibier.assets_path}/images/oss-gate.png"}, "")))
      children << p({className:"small"}, a({href:"https://oss-gate.github.io/", target:"_brank"}, "https://oss-gate.github.io/"))
  end
end
end

class Gibier::Page50 < Gibier::PageBase
def content
  [].tap do |children|
      children << p({className:"large"}, "まとめ")
      children << ul(nil,
                    li(nil, "Rubyのよいところを紹介しました"),
                    li(nil, "自然言語処理や機械学習の分野ではまだまだPythonに追いつけない"),
                    li(nil, "でも逆にやれることが沢山あって楽しいですよ！"),
                    li(nil, "Rubyのコミュニティはいつでも皆さんの参加をお待ちしています！")
      )
  end
end
end

class Gibier::Page51 < Gibier::PageBase
def content
  [].tap do |children|
  end
end
end

Gibier.page_count = 52
Gibier.title = "自然言語処理研究者に向けるRubyのススメ"

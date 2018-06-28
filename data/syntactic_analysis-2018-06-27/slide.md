# はじめに ～ <s>MEMM</s> Vitabiアルゴリズム

構文解析 2018/06/27 大崎 瑶

## もくじ

* 構文解析とは
* 品詞タグ付け
* 隠れマルコフモデル
  - 確率モデル
  - Viterbiアルゴリズム
* <s>最大エントリピーモデル</s>
* <s>最大エントリピーマルコフモデル</s>

## 構文解析とは

%left:

**構文構造**

* 句構造
* 依存構造
* 「深い」構文構造
  * 述語項構造
  * 意味役割り

### for Example

* The kid ate the cake.
* The cake was eaten by the kid.
* I miss the cake eaten by the kid.

---

%large: 2.1 品詞解析の役割

## 品詞タグ付け

This/D is/V a/D big/A city/N

## Penn Treebank

タグ付きのコーパス

![large](ptb.png)

---

%large: 2.2 機械学習による品詞タグ付け

## 品詞のあいまい性

We should <span {style:{background:"khaki"}}>bear</span> in mind that <span {style:{background:"khaki"}}>bear</span> is a wild animal.

* ルールベースの手法
    - shouldの直後には動詞が入るなど
* 機械学習

## 学習データ

* 学習データ
* 評価データ
* 開発データ

---

%large: 2.3 隠れマルコフモデル

## 確率モデル

![](most_suited_pos.png)

<!--
\begin{align*}
    \newcommand{\argmax}{\mathop{\rm arg~max}\limits}
    \mathbf{T}_{best}(\mathbf{W}) = \argmax_{\mathbf{T}} P(\mathbf{T} | \mathbf{W})
\end{align*}
-->

## 例題

![](4x4ways.png)

<!--
    &P(N,N,N,N|Then,saw,a,bear)&\\
    &P(V,N,N,N|Then,saw,a,bear)&\\
    &P(A,N,N,N|Then,saw,a,bear)&\\
    &P(D,N,N,N|Then,saw,a,bear)&\\
    &P(N,V,N,N|Then,saw,a,bear)&\\
    &\vdots&
-->

They saw a bear => n = 4

N:名詞 V:動詞 A:形容詞 D:限定詞

4 ^ 4 = 256通り

## ナイーブな推定方法

![](P_q_r.png)


## 学習データ例

![](training_data.jpg)

## データスパースネス

![](count_they_saw_a_bear.png)

=> 単語列まとめて確率を推定するのではなく、分解して確率の積の形にする。

## ベイズの定理

![](bayes.png)

<!--
\begin{eqnarray*}
    P(\mathbf{T}|\mathbf{W}) = \frac{P(\mathbf{W},\mathbf{T})}{P(\mathbf{W})}
\end{eqnarray*}
-->

![](bayes2.png)

<!--
\newcommand{\argmax}{\mathop{\rm arg~max}\limits}
\begin{eqnarray*}
    {\argmax_{\mathbf{T}}{P(\mathbf{T}|\mathbf{W})}} & = & {\argmax_{\mathbf{T}}{ \frac{P(\mathbf{W},\mathbf{T})}{P(\mathbf{W})}}}\\
    & = & \argmax_{\mathbf{T}} P(\mathbf{W},\mathbf{T})
\end{eqnarray*}
-->

## チェインルール

![](chain_rule.png)

<!--
\newcommand{\argmax}{\mathop{\rm arg~max}\limits}
\begin{eqnarray*}
    P(\mathbf{W},\mathbf{T}) &=& P(w_1,\ldots,w_n,t_1,\ldots,t_n)\\
    &=& P(t_1)P(w_1,\ldots,w_n,t_2,\ldots,t_n|t_1)\\
    &=& P(t_1)P(w_1|t_1)P(w_2,\ldots,w_n,t_2,\ldots,t_n|t_1,w_1)\\
    &=& P(t_1)P(w_1|t_1)P(t_2|t_1,w_1)P(w_2,\ldots,w_n,t_3,\ldots,t_n|t_1,t_2,w_1)\\
    &=& \prod_{i=1}^{n}P(t_i|t_1^{i-1},w_1^{i-1})P(w_i|t_1^i,w_1^{i-1})
\end{eqnarray*}
-->

## 大胆な仮説

![](eq26.jpg)

![](eq27.jpg)

## 各単語の条件付き確率

![](eq28.jpg)

## 例題

They/N saw/V a/D bear/N

![](answer.jpg)

## 品詞BOS/EOS

![](eq212.jpg)

## Vitabiアルゴリズム

デコーディングの一種で系列を出力する問題に利用される代表的なアルゴリズム

![w50](lattice.jpg)

---

![](eq213.jpg)

## ラティスの探索

![w50](fig22.jpg)

動的計画法を使って探索する

* (BOSから2列目のNに至る最短経路長) + (2列目のNから3列目のNまでの距離)
* (BOSから2列目のVに至る最短経路長) + (2列目のVから3列目のNまでの距離)
* ...

## アルゴリズム

![w50](fig23.jpg)


---


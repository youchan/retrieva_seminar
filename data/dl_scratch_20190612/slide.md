# ゼロから作るDeep Learning 2

%author: 株式会社 レトリバ 大崎 瑶

## もくじ

* 3.3 学習データの準備
* 3.4 CBOWモデルの実装
* 3.5 word2vecに関する捕捉

---

%large: 3.3 学習データの準備

## コンテキストとターゲット

![large](fig3-16.jpg)

---

![large](fig3-17.jpg)

## one-hot表現への変換

![large](fig3-18.jpg)

---

%large: 3.4 CBOWモデルの実装

## CBOWモデルのネットワーク構成

![middle](fig3-19.jpg)

## CBOWモデルの逆伝播

![middle](fig3-20.jpg)

## 学習コードの実装

## 学習過程の可視化

![middle](fig3-21.jpg)

---

%large: 3.5 word2vecに関する捕捉

## CBOWモデルと確率

![large](fig3-22.jpg)

## ベイズの定理

![large](bayes.png)

## CBOWモデルの確率的な意味

![](eq3-2.jpg)

![](eq3-3.jpg)

## skip-gramモデル

![large](fig3-23.jpg)

## skip-gramモデル

![middle](fig3-24.jpg)

## skip-gramモデルの確率的な意味

![](eq3-4.jpg)

## skip-gramモデルの確率的な意味

![](eq3-5.jpg)

![](eq3-6.jpg)

## skip-gramモデルの確率的な意味

![](eq3-7.jpg)

## カウントベース vs. 推論ベース

カウントベース

* 1回の学習で分散表現を得られる
* 単語の類似性がエンコードされる

推論ベース

* 追加学習ができる
* 単語の類似性に加えて複雑な単語間のパターンも捉えられている
  * ex. 「king - man + woman = queen」

---

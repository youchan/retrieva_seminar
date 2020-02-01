# ゼロからつくるDeep Learning 2

---

%large: 1章読んできたひと？ 🙋

---

%large: Deep Learning作るぞ！って人 🙋

---

%large: 自然言語処理(＋Deep Learning)に興味あるって人 🙋

---

%large: 数学とPythonの復習

---

%large: 行列わからんって人どれくらいいます？ 🙋

---

%large: 1.2 ニューラルネットワークの推論

## 1.2.1 ニューラルネットワークの推論の全体図

![middle](fig1_7)

## シグモイド関数

![middle](eq1_5)

---

![middle](fig1_10)

## 1.2.2 レイヤとしてのクラス化と順伝播の実装

![middle](fig1_11)

---

%large: 1.3 ニューラルネットワークの学習

## 1.3.1 損失関数

![middle](fig1_13)

## Softmax関数

![middle](eq1_6)

## 交差エントロピー誤差

![middle](eq1_7)

## ミニバッチ処理

![middle](eq1_8)

---

![middle](fig1_13)

## 1.3.2 微分と勾配

![middle](fig1_14)

## ベクトルの微分

![middle](eq1_9)

## 行列の微分

![middle](eq1_10)

## 1.3.3 チェインルール

![middle](eq1_11)

## 1.3.4 計算グラフ

* 加算ノード
* 乗算ノード
* 分岐ノード
* Repeatノード
* Sumノード
* MatMulノード

---

![middle](fig1_15)

---

![middle](fig1_16)

## 計算グラフの逆伝播

![middle](fig1_17)

## 加算ノード

![middle](fig1_18)

## 乗算ノード

![middle](fig1_19)

## 分岐ノード

![middle](fig1_20)

## Repeatノード

![middle](fig1_21)

## Sumノード

![middle](fig1_22)

## MatMulノード

![middle](fig1_23)

---

![middle](fig1_25)

## 1.3.5 勾配の導出と逆伝播の実装

* Sigmoidレイヤ
* Affineレイヤ
* Softmax with Lossレイヤ

## Sigmoidレイヤ

![middle](fig1_28)

## Affineレイヤ

![middle](fig1_29)

## Softmax with Lossレイヤ

![middle](fig1_30)


## 1.3.6 重みの更新

![middle](eq1_16)

---

%large: 1.4 ニューラルネットワークで問題を解く

## 1.4.1 スパイラル・データセット

![middle](fig1_31)

---

![middle](fig1_32)

---

%large: 1.5 計算の高速化

## 1.5 計算の高速化

* 1.5.1 ビット精度
* 1.5.2 GPU(CuPy)

---

%large: 1.6 まとめ

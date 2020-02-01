# ゼロから作るDeep Learning 2

%author: 株式会社 レトリバ 大崎 瑶

%icon: ![](youchan.jpg)

## もくじ

* 4.3 改良版word2vecの学習
* 4.4 word2vecに関する残りのテーマ

## 改良版word2vecの学習

レイヤの生成

```python
for i in range(2 * window_size):
  layer = Embedding(W_in)
  self.in_layers.append(layer)
self.ns_loss = NegativeSamplingLoss(W_out, corpus, power=0.75, sample_size=5)
```

---

![](fig4-19.png)

## BOWモデルの学習コード

```python
# ハイパーパラメータの設定
window_size = 5
hidden_size = 100
batch_size = 100
max_epoch = 10
```

## GPUの使用

```python
def to_gpu(x):
    import cupy
    if type(x) == cupy.ndarray:
        return x
    return cupy.asarray(x)
```

## CBOWモデルの評価

* 類似単語による評価

```
def cos_similarity(x, y, eps=1e-8):
    nx = x / (np.sqrt(np.sum(x ** 2)) + eps)
    ny = y / (np.sqrt(np.sum(y ** 2)) + eps)
    return np.dot(nx, ny)
```

## 類推問題

```python
query_vec = b_vec - a_vec + c_vec
query_vec = normalize(query_vec)

similarity = np.dot(word_matrix, query_vec)
```

---

```python
def normalize(x):
    if x.ndim == 2:
        s = np.sqrt((x * x).sum(1))
        x /= s.reshape((s.shape[0], 1))
    elif x.ndim == 1:
        s = np.sqrt((x * x).sum())
        x /= s
    return x
```

## 4.4 word2vecに関する残りのテーマ

* 転移学習
* 固定長のベクトルである

---

![](fig4-21.png)

![](fig4-22.png)

## 単語ベクトルの評価方法

* [1801.09536.pdf](https://arxiv.org/pdf/1801.09536.pdf)
* [How do I evaluate word embeddings? - Quora](https://www.quora.com/How-do-I-evaluate-word-embeddings)

---



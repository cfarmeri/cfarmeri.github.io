---
layout: post
title:  "Pubsを用いたコマンドライン論文管理"
date:   2018-05-01
categories: paper_management
---

# Motivation

今までは論文はReadCubeやMendeleyといったGUIアプリケーションを用いて管理していた。これらは、便利だが、PC間で共有するにはストレージ制限があるし、MendeleyはMac OS Xへの最新版への対応に時間がかかる等、少し厄介なところがある。今回は、GitHubで見つけたコマンドライン論文管理ツールPubsの使い方をまとめて、この面倒を少しでも緩和することを目指す。


# Environment
今回はMacに元から入っているPython3.6下で。

# Installation
[PubsのGitHubページ](https://github.com/pubs/pubs)

```
$ pip install pubs
```

# Usage
### Pubsの起動

```
$ pubs init
```
デフォルトでは、pubsのリポジトリは `~/.pubs/`に置かれる。
この場所をDropbox等のクラウドに設定すればPC間でライブラリを共有できる。

```
$ pubs init --pubsdir path/to/dir/
```


### Pubsへの論文の追加
`pubs add`コマンドを使用。
このときにDOI, ISBN, bibファイルをメタ情報として一緒に投げる必要がある。

DOIを用いて(`-D`)

```
$ pubs add -D 10.1007/s00422-012-0514-6 -d article.pdf
```

ISBNを用いて(`-I`)

```
$ pubs add -I 978-0822324669 -d article.pdf
```


bibファイルを用いて(あんまり使用頻度多くないかも)

```
$ pubs add reference.bib -d article.pdf 
```


### 論文へcitekeyの割当
論文をリポジトリに追加すると、デフォルトでは"[Author]_[Year]"というcitekeyが割り当てられる。

```
$ pubs rename citekey new_citekey
```

### リポジトリにある論文一覧表示

```
$ pubs list
```


# 使用指針
このツールだけで論文を全て管理するのは、

- 1つ1つ論文を管理する必要があること
- 検索ができないこと

を考えると、不十分。MendleyやReadCube、Evernoteといったアプリと使い分けをうまく行う必要がありそう。


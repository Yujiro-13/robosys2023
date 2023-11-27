# robosys2023 assignment

ロボットシステム学 2023年度の授業課題用ファイルをまとめたリポジトリです。

## 実行環境
以下の環境、ソフトウェアにおいてプロフラムの実行及びテストを確認しています。
- Ubuntu22.04LTS
 - python3.7 ~ 3.10

## インストール方法
"git"を使用して本パッケージをダウンロードします。
```
$ git clone https://github.com/Yujiro-13/robosys2023.git
```

## 実行方法
### 例 plus
seqコマンドで順に出力された整数値を標準入力から受け取り、その合計値を出力します。
```
$ seq 5 | ./plus
```
出力結果
```
$ 15
```

## テスト結果
[![test](https://github.com/Yujiro-13/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/Yujiro-13/robosys2023/actions/workflows/test.yml)


## 著作権・ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Yujiro Shito

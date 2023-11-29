# robosys2023 assignment
ロボットシステム学 2023年度の授業課題用ファイルをまとめたリポジトリです。

## テスト結果
[![test](https://github.com/Yujiro-13/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/Yujiro-13/robosys2023/actions/workflows/test.yml)

## 実行環境
以下の環境、ソフトウェアにおいてプロフラムの実行及びテストを確認しています。
- Ubuntu 22.04 LTS
 - python 3.7 ~ 3.10

## インストール方法
"git"コマンドを使用してリポジトリをクローンします。
```
$ git clone https://github.com/Yujiro-13/robosys2023.git
```

## 実行方法
下記コマンドでディレクトリに移動してから実行します。
```
cd robosys2023
```
### 例1 plus
seqコマンドで順に出力された整数値を標準入力から受け取り、その合計値を出力します。
```
$ seq 5 | ./plus
```
出力結果
```
15
```
### 例2 calculator
echoコマンドで出力された２値の式を受け取り、計算結果を出力します。
```
$ echo "2 + 3" | ./calculator
```
出力結果
```
5
```




## 著作権・ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* © 2023 Yujiro Shito

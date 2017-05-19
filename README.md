# DateFormatter

## 概要

日時をDate型からString型、または、String型からDate型へ変換するためのインスタンスを生成するクラス

## 関連クラス

Formatter

## 主要プロパティ
| プロパティ | 説明　| サンプル  |
|---|---|---|
| locale | ロケールを設定 |dateFormater.locale = Locale(identifier: "ja_JP")|
| dateStyle | 日付の形式を設定する | dateFormater.dateStyle = .full |
| timeStyle | 時間の形式を設定する | dateFormater.timeStyle = .medium |
| dateFormat | 日付の書式を設定する | dateFormater.dateFormat = "yyyy/MM/dd HH:mm:ss"|



## 主要メソッド
| メソッド | 説明 | サンプル　|
|---|---|---|
| date | 文字列を日付型に変換する | dateFormater.date(from: "2016/10/3 12:12:12") |
| string | 日付型を文字列に変換する | dateFormater.string(from: Date())) |

## フレームワーク
Foundation.framework

## サポートOSバージョン
iOS2.0以上

## 開発環境
|category | Version| 
|---|---|
| Swift | 3.0.2 |
| XCode | 8.2 |
| iOS | 10.0以上 |

## 参考
https://developer.apple.com/reference/foundation/date


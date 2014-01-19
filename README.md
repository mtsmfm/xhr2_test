# XMLHttpRequest Level 2 によるクロスドメイン通信

XMLHttpRequest Level 2 によるクロスドメイン通信を試してみたかった。

## 実現方法

Access-Control-Allow-Origin ヘッダで許可するドメインを指定するだけ。

## 使い方

```bash
git clone https://github.com/mtsmfm/xhr2_test
cd xhr2_test
bundle install
bundle exec ruby api_server
bundle exec ruby client

# localhost:4567/hi にブラウザからアクセス
```

api_server からとってきた文字列、 "Hello world" が表示される。

server から api_server へは 127.0.0.1 で繋ぎにいっている。
Access-Control-Allow-Origin ヘッダに何も書いていないと chrome では以下のエラーが出る。

```
XMLHttpRequest cannot load http://127.0.0.1:4568/hi. No 'Access-Control-Allow-Origin' header is
present on the requested resource. Origin 'http://localhost:4567' is therefore not allowed access.
```

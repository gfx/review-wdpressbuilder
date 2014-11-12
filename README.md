# Review::Wdpressbuilder

Re:VIEWフォーマットからWEB+DB PRESS編集部が使える形式にするRe:VIEWのカスタムビルダです。

現在は[md2inao](https://github.com/naoya/md2inao)で処理できるmarkdownに変換しますが、将来的にはInDesign tagged textやInDesign XMLに変換する可能性があります。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'review-wdpressbuilder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install review-wdpressbuilder

## Usage

```
review-compile --target=wdpress
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/review-wdpressbuilder/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

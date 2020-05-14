# Japanese Font Subsetter

> An easy way to make a subset from a Japanese font.

## Setup

```shell
$ pipenv install
```

## Usage

Put your font files into the `src` directory and just run: `pipenv run ./generate.sh`.

NOTE: By default, the glyphs included in the subset are:

- All single-byte characters in Shift_JIS except control characters
- All double-byte characters in Shift_JIS except JIS level-2, level-3 and level-4 kanji

If you want to customize which glyph to include in the subset, edit the `chars.txt`.

## References

- [OpenTypeフォントの軽量化と自動カーニング - ureta.net](https://ureta.net/2017/02/tool_fonttools/)
- [文字コード表 シフトJIS(Shift_JIS)](http://charset.7jp.net/sjis.html)
- [JIS第1水準の漢字一覧表](http://kanjitisiki.com/jis1/)

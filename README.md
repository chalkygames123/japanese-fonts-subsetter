# Japanese Fonts Subsetter

> Minimal script to subset and compress Japanese fonts for web use

## Prerequisites

- You have [Poetry](https://python-poetry.org/) installed.

## Getting started

Run `poetry install` to install dependencies.

## Usage

First, create a `src/` directory and put the font files you want to subset there.

Then run `poetry run ./subset` to subset the font files or `poetry run ./compress` to compress the font files.

> [!NOTE]
> Note that by default the subsets include:
>
> - all single-byte characters in Shift_JIS except control characters.
> - all double-byte characters in Shift_JIS except JIS level-2, level-3 and level-4 kanji.
>
> You can edit `chars.txt` to include or exclude characters you want.

## References

<!-- prettier-ignore -->
- [OpenTypeフォントの軽量化と自動カーニング - ureta.net](https://ureta.net/2017/02/tool_fonttools/)
- [文字コード表 シフトJIS(Shift_JIS)](http://charset.7jp.net/sjis.html)
- [JIS第1水準の漢字一覧表](http://kanjitisiki.com/jis1/)
- [ウェブフォントの最適化  |  Web Fundamentals  |  Google Developers](https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/webfont-optimization)

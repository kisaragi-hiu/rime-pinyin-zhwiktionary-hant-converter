# Chinese Wiktionary dictionary for and RIME

Note that this converter only provides a RIME dictionary as the format (with tones) is not compatible with fcitx5-pinyin.

If anyone wants this for fcitx5-pinyin, please let me know by filing an issue. It will require a bit of fiddling but shouldn't be too hard.

## Why

The RIME dictionary that kaseiwang/fcitx5-pinyin-zhwiki generates is for Luna Pinyin (no tones) and isn't usable through Bopomofo. This version aims to support that.

## Installation

- Arch Linux:

  ```
  $ yay -S rime-pinyin-zhwiktionary-hant
  ```

- Plum (for RIME):

  TODO

  <!-- ``` -->
  <!-- $ rime-install felixonmars/fcitx5-pinyin-zhwiki -->
  <!-- ``` -->

- Others:

  TODO

  <!-- Download latest version of "zhwiki.dict" from: -->
  <!-- https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases -->
  
  <!-- Copy into ~/.local/share/fcitx5/pinyin/dictionaries/ (create the folder if it does not exist) -->


## Build

Build-time dependencies:

- opencc (https://pypi.org/project/OpenCC/)
- pypinyin (https://pypi.org/project/pypinyin/)

Manual Build RIME dictionary & Installation:

```
make zhwiktionary.dict.yaml
sudo make install # or manually copy the file to the right place
```

## License

Unlicense

Note that the generated dictionary follows Wikimedia's license: https://dumps.wikimedia.org/legal.html

## Acknowledgements

- Original zhwiki converter by Felix Yan: https://github.com/felixonmars/fcitx5-pinyin-zhwiki
- Original zhwiktionary converter by Kasei Wang: https://github.com/kaseiwang/fcitx5-pinyin-zhwiki

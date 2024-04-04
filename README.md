# Chinese Wiktionary dictionary for fcitx5-pinyin and RIME

Installation:

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



Build Requirements:

- libime (https://github.com/fcitx/libime/)
- opencc (https://pypi.org/project/OpenCC/)
- pypinyin (https://pypi.org/project/pypinyin/)


Manual Build & Installation:

make
sudo make install

Manual Build rime dict & Installation

make zhwiki.dict.yaml
sudo make install_rime_dict

License: Unlicense

Note that the generated dictionary follows Wikimedia's license: https://dumps.wikimedia.org/legal.html

## Why

The RIME dictionary that kaseiwang/fcitx5-pinyin-zhwiki generates is for Luna Pinyin (no tones) and isn't usable through Bopomofo. This version aims to support that.

## Acknowledgements

- Original zhwiki converter by Felix Yan: https://github.com/felixonmars/fcitx5-pinyin-zhwiki
- Original zhwiktionary converter by Kasei Wang: https://github.com/kaseiwang/fcitx5-pinyin-zhwiki

# ポップアップメッセージの表示

Tkinter を使って、多少は使い物になりそうな小品を作ってみましょう。ポップアップしてメッセージを表示する簡単なツールです。

````
# for python 2.7
# coding: utf-8

import Tkinter as t
import tkMessageBox as mb
import sys, os

root = t.Tk()
root.withdraw()

if (sys.platform == "darwin"):
  os.system('''/usr/bin/osascript -e 'tell app "Finder" to set frontmost of process "Python" to true' ''')

result = mb.showinfo("Message Box", u"時間ですよ！")

if result:
  root.destroy()

root.mainloop()
````

このスクリプトを実行すると、次のようなメッセージが表示されます。

![ポップアップメッセージ](https://raw.githubusercontent.com/wiki/mnaniwa-291031/programming_study/images/popup_alert.png)

真ん中付近にある os.system() は MacOS X 向けのもので、これがないと Window が他のアプリケーションの下に隠れてしまい、見え辛くなります。なので、OS の AppleScript を叩いて Python を前面に引き出しています。

あまり大した代物ではありませんが、これでも例えば find コマンド使った処理が長く掛かる場合など、処理が終わった時にポップアップで知らせてもらうような用途には使えるでしょう。コードも簡単で改造も容易ですから、必要に合わせて使い捨てにするスクリプトの下敷きには使えると思います。

## 参考：MacOS X の場合

ただし MacOS X の場合は、別に Tkinter を使わなくても標準の AppleScript でダイアログを表示できたりします。

```
#!/bin/bash

osascript -e 'tell app "System Events" to display alert "Hello, AppleScript World!\n\nこんにちは、AppleScript 世界！" '
```

![AppleScript ダイアログ](https://raw.githubusercontent.com/wiki/mnaniwa-291031/programming_study/images/as_popup.png)

日本語や改行による複数行も大丈夫っぽい。
（ただし、「￥n」は「＼n」（半角バックスラッシュ）でないと正常に改行してくれない）

なので、Tkinter が特別すごいとは主張しづらいのが切ないところです。

### 参考資料

1. [python - Tkinter window focus on Mac OS X - Stack Overflow][id1]
2. [How to use AppleScript to display a dialog from the MacOS Unix shell][id2]

[id1]: https://stackoverflow.com/questions/17774859/tkinter-window-focus-on-mac-os-x
[id2]: https://alvinalexander.com/mac-os-x/applescript-shell-unix-command-line-bash-dialog


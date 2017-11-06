# Tkinter

tkinter は、Tk ツールキットを Python から使うためのインターフェースを提供するパッケージです。Python を使った GUI アプリケーションがかなり簡単に作れます。

Tcl/Tk に関する詳細は、[Wikipedia](https://ja.wikipedia.org/wiki/Tcl/Tk) 他をご参照ください。

## 最初の最小な第一歩

Tkinter の特長は、やはり手軽に GUI アプリケーションを構築できることでしょう。複雑な代物が複雑な構成になるのは仕方がないことですが、簡単なものであればやはり簡単に作り出せるのが有り難いものです。

Tkinter を使うための必要最小限のコードは以下の通りです。

```
# これは python 2.7 の場合です。
# python 3.x では、import tkinter となります。

import Tkinter

root = Tkinter.Tk()
root.mainloop()
```

このコードで、次の真っ白い Window が生成されます。

![最小コードの Window](https://raw.githubusercontent.com/wiki/mnaniwa-291031/programming_study/images/minimum_window.png)

画面は、MacOS X 環境で実行したものです。

この状態ですでに、Window を移動させたり、大きさを変えたり、×印クリックして閉じたりといった基本的な操作が可能になっています。

これだけでは単に Window が開けたというだけで大して使い道がある訳ではありませんが、事前に色々と大量の呪文を唱えなくても始められるという点で、少なくとも GUI アプリケーションへのハードルを下げてくれると思います。


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

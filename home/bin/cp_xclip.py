#!/usr/bin/python

from gtk import clipboard_get
import sys
import urllib

cb = clipboard_get()
cb.set_text(urllib.unquote(sys.argv[1]))
cb.store()

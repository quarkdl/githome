#!/usr/bin/python

from gtk import clipboard_get
import sys
import os
import shutil
import urllib

log_file = open("/home/jarondl/log/mv_xclip_ext.log",'a')
sys.stderr = log_file
sys.stdout = log_file

src_name = urllib.unquote(sys.argv[1])
trgt_dir = urllib.unquote(sys.argv[2])
trgt_ext = urllib.unquote(sys.argv[3])

#with open("/home/jarondl/log/mv_xclip_ext.log",'a') as logfile:
#    logfile.writelines("mv_xclip_ext.py {0} {1} {3} \n".format(src_name, trgt_dir, trgt_ext))
print("mv_xclip_ext.py {0} {1} {2} ".format(src_name, trgt_dir, trgt_ext))

cb = clipboard_get()
trgt_base = cb.wait_for_text()

if trgt_base is None :
    raise Exception("Empty clipboard")

trgt_name = os.path.join(trgt_dir,trgt_base) + "." + trgt_ext
shutil.move( src_name, trgt_name)

#with open("/home/jarondl/log/mv_xclip_ext.log",'a') as logfile:
#    logfile.writelines("mv {0} {1}\n".format(src_name, trgt_name))
print ("mv {0} {1}".format(src_name, trgt_name))


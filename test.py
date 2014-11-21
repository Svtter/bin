#!/usr/bin/python
# coding: UTF-8

import sys
import os


if len(sys.argv) < 2:
    print 'no word.'
else:
    # 利用popen保存执行返回的结果，返回结果是一个文件(速度问题？)
    f = os.popen('curl http://dict.cn')
    res = f.read()
    print res

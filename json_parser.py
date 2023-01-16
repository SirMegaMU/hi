# -*- coding: utf-8 -*-
import sys,json,os

args=sys.argv

if __name__ == "__main__":
    # print(args)
    source=args[1]
    if os.path.isfile(source):
        file=open(source)
        source=file.read()
        file.close()
    key=args[2]
    # print(source,key)
    raw=json.loads(source)
    # print(raw)
    res=raw[key]
    if iter(res) and isinstance(res,str)!=True:
        a=""
        for item in res:
            a+=item
            a+=" "
        print(a)
    else:
        print(res)

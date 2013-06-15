#############################################################
# File Name: makefile.sh
# Author: dby812
# mail: sys.linux.d@gmail.com
#Program:
#   自动生成简单的makefile文件
# Created Time: 2013年04月22日 星期一 13时17分24秒
################################################################
#!/bin/bash

if [ -e makefile ] ; then
    rm -i makefile
fi
touch makefile
echo -e "$1:$1.o\n\tg++ -o $1 $1.o">>makefile
echo -e "$1.o:clean\n\tg++ -c $1.cpp">>makefile
echo ".PHONY:clean">>makefile
echo -e "clean:\n\t-rm -r *.o $1 2> /dev/null">>makefile

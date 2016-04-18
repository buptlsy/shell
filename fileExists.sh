#!/bin/bash
echo "Please input a filename, i will check  the filename type and permission.\n\n"
read -p "input a filename:" filename
#用户是否真的输入一个字符串
test -z $filename && echo "you must input a file"&& exit 0
#文件是否存在
test ! -e $filename && echo "the filename '$filename' do not exist" && exit 0
#判断文件类型与属性
test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"
#输出信息
echo "the filename: $filename is a $filetype"
echo "and the perm are : $perm"

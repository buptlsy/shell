#!/bin/bash
##方法一
## tail -n +10 去掉前9行
## head -n -2 去掉最末行
head -n 10 file.txt | tail -n +10

##方法二
sed -n "10p" file.txt

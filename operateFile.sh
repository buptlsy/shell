#!/bin/bash
##转置内容
## name age
## jhon 20
##---------->>>>
## name jhon
## age 20
awk '{
    for (var i=1; i <= NF; i++) {
        if (NR == 1) {
            s[i]=$i
        } else {
            s[i]=s[i]" "$i
        }

    }
} END {
    for (var j=1; s[j]!=""; j++) print s[j];
}
' file.txt

##统计词频
cat file.txt | tr -s ' ' '\n' | sort | uniq -c | sort -nr | awk '{print $2, $1}'

##正则表达式
##two formats: (xxx) xxx-xxxx or xxx-xxx-xxxx. (x means a digit)
egrep -o "^(([0-9]{3}\-)|(\([0-9]{3}\) )){1}[0-9]{3}\-[0-9]{4}$" file.txt

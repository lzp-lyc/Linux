#!/bin/bash

echo *****三个数运算器*****
echo -n 输入第一位数：
read i
echo -n 输入第二位数：
read m
echo -n 输入第三位数：
read n

val1=$(echo "scale=4;$i * $m / $n" | bc)
echo 结果为：$val1

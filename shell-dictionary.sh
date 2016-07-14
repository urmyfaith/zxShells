#!/usr/local/bin/bashh


echo "shell定义字典"
#必须先声明
declare -A dic
dic=([key1]="value1" [key2]="value2" [key3]="value3")

#打印指定key的value
echo ${dic["profile_url"]}
#打印所有key值
echo ${!dic[*]}
#打印所有value
echo ${dic[*]}

#遍历key值
for key in ${!dic[*]}
do
	echo "$key : ${dic[$key]}"
done

echo "shell定义数组"

:<<!
shell定义字典

key3 key2 key1
value3 value2 value1
key3 : value3
key2 : value2
key1 : value1
shell定义数组
!
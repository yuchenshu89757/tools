# 字符串比较
# 字符串的< 和 > 比较操作必须用[[]]进行转转义
str1="abc"
str2="123"
str3="abc"
if [ $str1 == $str2 ]; then
    echo "str1 == str2"
else
    echo "str1 != str2"
fi
if [ $str1 != $str3 ]; then
    echo "str1 != str3"
else
    echo "str1 == str3"
fi
if [[ $str1 < $str2 ]]; then
    echo "str1 < str2"
else
    echo "str1 >= str2"
fi
if [ -n $str1 ]; then
    echo "len(str1) > 0"
else
    echo "str1 is empty"
fi
if [ -z $str4 ]; then
   echo "str4 is not defined or empty"
else
   echo "str4 is defined and not empty"
fi
if [ $str1 == $str3 -a $str1 != $str2 ]; then
    echo "str1 == str2 and str1 != str2"
else
    echo "str1 != str2 or str1 == str2"
fi
if [ $str1 != $str3 -o $str1 != $str2 ]; then
    echo "str1 != str2 or str1 != str2"
else
    echo "str1 == str2 and str1 == str2"
fi
if [[ $str1 == $str3 && $str1 > $str2 ]]; then
    echo "str1 == str3 && str1 > str2"
else
    echo "str1 != str3 || str1 <= str2"
fi
if [[ $str1 != $str3 || $str1 > $str2 ]]; then
    echo "str1 != str3 || str1 > str2"
else
    echo "str1 == str3 && str1 <= str2"
fi
# 数字的比较
int1=1
int2=2
int3=2

if [ $int1 -eq $int2 ]; then
    echo "int1 == int2"
else
    echo "int1 != int2"
fi
if [ $int1 -ne $int2 ]; then
    echo "int1 != int2"
else
    echo "int1 == int2"
fi
if [ $int1 -gt $int2 ]; then
    echo "int1 > int2"
else
    echo "int1 <= int2"
fi
if [ $int2 -ge $int3 ]; then
    echo "int2 >= int3"
else
    echo "int2 < int3"
fi
if [ $int1 -lt $int2 ]; then
    echo "int1 < int2"
else
    echo "int1 > int2"
fi
if [ $int2 -le $int3 ]; then
    echo "int2 <= int3"
else
    echo "int2 > int3"
fi
if [ ! $int2 -le $int3 ]; then
    echo "int2 !<= int3"
else
    echo "int2 <= int3"
fi

dir=/home/work
file=/home/users/chenyi/test1
file1=/home/users/chenyi/test2
empty_file=/home/abc.tmp

if [ -d $dir ]; then
    echo "dir is a directory"
else
    echo "dir is not a directory"
fi
if [ -f $file ]; then
    echo "file is a file"
else
    echo "file is not a file"
fi
if [ -x $dir ]; then
    echo "dir is executable"
else
    echo "dir is not executable"
fi
if [ -r $dir ]; then
    echo "dir is readable"
else
    echo "dir is not readable"
fi
if [ -w $dir ]; then
    echo "dir is writable"
else
    echo "dir is not writable"
fi
if [ ! -s $empty_file ]; then
    echo "empty_file is not exist or size = 0"
else
    echo "empty file is exist and size != 0"
fi
if [ $file -nt $file1 ]; then
    echo "file is newer than file1"
else
    echo "file is not newer than file1"
fi
if [ $file -ot $file1 ]; then
    echo "file is older than file1"
else
    echo "file is not older than file1"
fi
if [ $file -ef $file1 ]; then
    echo "file and file1 are same file"
else
    echo "file and file1 are not same file"
fi

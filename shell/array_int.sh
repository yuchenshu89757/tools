# define an array
## Integer array
arr=(1 2 3 4 5)

# operation
## Length
length1=${#arr[@]}
length2=${#arr[*]}
echo "length1="$length1, "length2="$length2

## Index
index2=${arr[2]}
index4=${arr[4]}
echo "arr_index2="$index2, "arr_index4="$index4

arr[2]=100
echo "after change, arr_index2="${arr[2]}, "arr_length="${#arr[*]}}

## Traverse
i=0
for item in ${arr[*]}; do
    echo "arr"$i"="$item
    i=`expr $i + 1`
done

## Slice
echo "arr[1:3]="${arr[@]:1:3}

## Clear
unset arr[1]
unset arr

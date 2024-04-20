#!/bin/bash

compare_files() {
    echo "Comparing $1 and $2"
    if [[ ! -e "$1" ]] || [[ ! -e "$2" ]]; then
        echo "File $1 or $2 is not found"
        echo ""
        return 0
    fi

    if cmp -s "$1" "$2"; then
        echo "Succeed! Files $1 $2 are the same"
        echo ""
        return 1
    else
        echo "Failed! Files $1 $2 are different. Show the difference:"
        echo ""
        diff "$1" "$2"
        return 0
    fi

}

sum=0
for file in ./test-release/*.riscv; do
    ./build/Simulator $file > ${file%.riscv}.out
    compare_files ${file%.riscv}.out ${file%.riscv}.ref
    result=$?
    sum=$(($sum + $result))
done
echo "$sum / 5 tests pass!"

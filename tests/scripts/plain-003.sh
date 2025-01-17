# regression tests
echo "a\"b"

echo 'cicada, is not a "cicada", but a "unix shell".' \
    | awk -F "[ ,.\"]+" '{for(i=1;i<=NF;i++)A[$i]++}END{for(k in A)print k, A[k]}' \
    | sort -k2nr \
    | head -n5

echo {a,b}-$nosuchenv
echo {a,b}-${nosuchenv}

# tests on ~ expansion
touch ~/283b812a.txt
ls ~ 2>/dev/null | grep -o 283b812a
ls ~/ 2>/dev/null | grep -o 283b812a

cd
echo 283*

rm -f ~/283b812a.txt

31415926 + 1 
3 - 1
4 * 5
4 / 5.0 
2 ^ 5
((1 + 1) ^ (5 + 1) )

# cicada: 31415926: command not found
31415926

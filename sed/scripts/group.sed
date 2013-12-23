sed -rn 's/1(.+)0/9\19/p' data/numbers1000.txt
sed -rn 's/(1(.+)0)/\2 \1/p' data/numbers1000.txt
sed -rn '/^(.)(.?)\1$/p' data/numbers1000.txt
sed -rn 's/(^|[^0-9.])([0-9]+)([0-9]{3})/\1\2,\3/gp' data/numbers1000.txt
sed -rn ':a' data/numbers1000.txt


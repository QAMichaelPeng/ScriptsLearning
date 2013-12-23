sed 'N;s/\n/ /' data/numbers.txt
sed 'N;N;s/\n/ /g' data/numbers.txt
sed 'p;N;d' data/numbers.txt
sed 's/^.*$//;N;s/\n//' data/numbers.txt

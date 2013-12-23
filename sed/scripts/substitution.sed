sed -n '/1000/s/0/a/p' data/numbers1000.txt
sed -n '/1000/s/0/a/gp' data/numbers1000.txt
sed -n '/1000/s:0:a:gp' data/numbers1000.txt
sed -n '/1000/s:0:a:2p' data/numbers1000.txt
sed -n '/1000/s:0:a:2gp' data/numbers1000.txt
sed -n '/1000/s:0:a:2gp w tmp/tmp.txt' data/numbers1000.txt
cat tmp/tmp.txt
sed -n 's/Hello/ok/p' data/words.txt
sed -n 's/Hello/ok/ip' data/words.txt
sed -n 's/hello/\u&/ip' data/words.txt
sed -n 's/hello/\U&/ip' data/words.txt
sed -n 's/hello.*/\U&/ip' data/words.txt
sed -n 's/[a-z]/\u&/p' data/words.txt
sed -n 's/[a-z]/\u&/gp' data/words.txt
sed -n 's/[a-z]/\u&\E&/gp' data/words.txt

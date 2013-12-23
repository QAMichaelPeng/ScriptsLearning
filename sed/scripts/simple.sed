sed s/99/999/ data/numbers.txt
sed /99/d data/numbers.txt
sed "/^9/w tmp/newfile" data/numbers.txt
cat tmp/newfile
sed -n "30,40p" data/numbers.txt
sed "10q" data/numbers.txt
sed -e "s/99/999/" -e "s/100/1000/" data/numbers.txt
sed  "s/99/999/;s/100/1000/" data/numbers.txt
sed "/^10./s/0/9/g" data/numbers.txt
sed -n '1,15p' data/1-10.txt data/11-20.txt
sed -ns '1,15p' data/1-10.txt data/11-20.txt

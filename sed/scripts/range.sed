sed -n 10p data/numbers.txt
sed -n 1,10p data/numbers.txt
sed -n '90,$p' data/numbers.txt
sed -n '10,+3p' data/numbers.txt
sed -n '10,~3p' data/numbers.txt
sed -n '10,~7p' data/numbers.txt
sed -n '10~3p' data/numbers.txt
sed -n '10~7p' data/numbers.txt
sed -rn '/^1[0-9]$/,~7p' data/numbers.txt
sed -n '/^[0-9]1$/,~7p' data/numbers.txt
sed -n '/^[0-9][05]$/,~7p' data/numbers.txt
sed -n '/^10$/,20p' data/numbers.txt
sed -n '/^30$/,20p' data/numbers.txt
sed -n '/^20$/,/^30$/p' data/numbers.txt
sed -n '/^30$/,/^20$/p' data/numbers.txt

SRC=data/numbers.txt
function pause(){
read -p "$*"
}

mkdir tmp
TMPSCIPT=tmp.sh    
OLDIFS=$IFS
IFS=$(echo -en "\n\b")
array=(
`cat "$1" |sed /^#/d`
)
for cmd in "${array[@]}"
do
    pause $cmd
    echo $cmd > $TMPSCIPT
    $TMPSCIPT
done
IFS=$OLDIFS

rm -rf tmp

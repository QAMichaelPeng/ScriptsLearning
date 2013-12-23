sed -rn ':a;s/(^|[^0-9.])([0-9]+)([0-9]{3})/\1\2,\3/;ta;p' data/longNumbers.txt
sed 's/Administration/Supervision/' data/branchSample.txt
sed 's/Administration/Supervision/p' data/branchSample.txt
sed 's/Administration/Supervision/;n;p' data/branchSample.txt
sed -r '/Administration/{s/Administration/Supervision/;:a;n;ba}' data/branchSample.txt
sed -r ':a;$!{N;/\n$/!ba};s/\"[^"]*\"//g' data/branchSample.txt

awk '/foo/{print $0}' data/BBS-list
awk '{if (length($0) > max) max = length($0)} END {print max}' data/BBS-list
awk '{if (length($0) > 30) print $0}' data/BBS-list
awk 'length($0) > 30' data/BBS-list

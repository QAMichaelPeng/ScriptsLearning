     # Put 80 spaces in the buffer
     1 {
     # exchange pattern and holding space, now holding space is empty
       x
     # set pattern space to 10 spaces
       s/^$/          /
     # dup 10 spaces 8 times to 80 spaces
       s/^.*$/&&&&&&&&/
     # exchange 80 spaces to holding space, original line back to 
     # pattern space
       x
     }
     
     # del leading and trailing spaces
     # change all tab with spaces
     y/	/ /
     # strim start
     s/^ *//
     # strim end
     s/ *$//
     
     # add a newline and 80 spaces to end of line
     G
     
     # keep first 81 chars (80 + a newline)
     s/^\(.\{81\}\).*$/\1/
     
     # \2 matches half of the spaces, which are moved to the beginning
     s/^\(.*\)\n\(.*\)\2/\2\1/

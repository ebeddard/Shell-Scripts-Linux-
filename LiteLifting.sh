#Elliot Beddard
#CSCI 274
#11/18/2021

chars=$(cat $1 | wc -m)
emptyLines=$(echo "$1" | grep -c "^$" $1)
charsWONL=$(tr -d "\n" < "$1" | wc -c)
alphaNumeric=$(tr -cd [^a-zA-Z0-9] < "$1" | wc -c)
echo "This file has $chars characters in it."
echo "This file has $charsWONL characters not counting newline."
echo "This file has $emptyLines empty lines."
echo "This file has $alphaNumeric alphanumeric characters."

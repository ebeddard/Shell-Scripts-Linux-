echo "Pick a quote-sayer from:"
currFiles=$(ls)
for fileName in $currFiles; do
    echo $fileName
done
echo "... or enter QUIT to exit the script."
read quoteSayer
if [[ "$quoteSayer" == "QUIT" ]]; then
    exit 0
elif [[ "$currFiles" != *"$quoteSayer"* ]]; then
    exit 7
fi
echo "$quoteSayer said..."
cd ./$quoteSayer
cat quote.txt

echo "1st file: "
read first
echo "2st file: "
read second

cat $first > third
cat $second >> third

echo "after concatenation"
echo ---------------------------------------------------------------------------------------
cat third | more
echo ---------------------------------------------------------------------------------------

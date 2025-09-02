# check if racket is in PATH
if ! command -v racket &> /dev/null
then
  echo "Racket could not be found, please install Racket and ensure it's in your PATH."
  echo "See README.md for instructions."
  exit 1
fi

if ! [ -d "./tmp" ]; then
  mkdir ./tmp
fi

# make a temporary file
timestamp=$(date +%s)
temp_file_name="./tmp/temp_racket.${timestamp}.rkt"
touch $temp_file_name

# write #lang sicp header
echo "#lang sicp\n" >> $temp_file_name

cat "$1" >> $temp_file_name

racket $temp_file_name

rm $temp_file_name

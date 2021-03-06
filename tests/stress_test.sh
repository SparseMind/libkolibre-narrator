#!/bin/sh

toppkgdir=${srcdir:-.}
utils=$toppkgdir/../utils/build_message_db.py
prompts=$toppkgdir/../prompts/narrator.csv
messages=$toppkgdir/../prompts/types.csv
translations=$toppkgdir/../prompts/sv_translations.csv
language=sv
database=stress.db

python $utils -p $prompts -m $messages -t $translations -l $language -o $database

./stress_test
result=$?
rm $database

exit $result


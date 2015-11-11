#!/usr/bin/env bash
echo "date = '$(date +"%T.%N")'" > gen/file.py

printf "cat gen/file.py: "
cat gen/file.py
docker build -t test:1 .

printf "\n-------------------------\n"
printf "updating gen/file.py"
echo "date = '$(date +"%T.%N")'" > gen/file.py
printf "\n-------------------------\n\n"

printf "cat gen/file.py: "
cat gen/file.py
docker build -t test:1 .

#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    WORD_COUNT="$(wc -w "${f}" | cut -f1 | awk '{print $1}')"
    echo "Processing $f file..."
    echo "File size: $SIZE"
    echo "Word count: $WORD_COUNT"
  fi
done

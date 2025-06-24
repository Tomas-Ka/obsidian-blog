#! /bin/bash
cd _notes/_Staging/attachments
for f in ./*.jpg; do cwebp "$f" -o "${f%.*}.webp" -q 70; done

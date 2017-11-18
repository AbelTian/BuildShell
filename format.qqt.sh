#!/usr/bin/env bash

src=/Users/abel/Develop/a0-develop/a0-qqtfoundation/src
cd $src

#format
for f in $(find . -name '*.c' -or -name '*.cpp' -or -name '*.h' -type f)
do
astyle --style=allman --attach-namespaces --attach-inlines --attach-extern-c \
    --attach-closing-while --break-blocks --pad-oper --pad-comma --pad-paren \
    --max-code-length=120  --suffix=none  -z2 $f
done

#code count
perl /Users/abel/Develop/b1-buildshell/cloc-1.74.pl  .

#date time
date

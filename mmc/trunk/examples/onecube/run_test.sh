#!/bin/sh

../../src/bin/mmc -n 20 -f onecube.inp -s onecube -D 1   | sed -e 's/^M/1/g' -e 's/^B/0/g' -e 's/P/2/g'| sed '$d' > mov.txt
../../src/bin/mmc -n 20 -f onecube.inp -s onecube -D 256 | sed -e 's/^[A-Z] //g' | sed '$d' > ad.txt

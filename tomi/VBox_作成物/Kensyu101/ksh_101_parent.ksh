#!/usr/bin/ksh
#Linux課題_101_親シェル

stdout=
stderr=

stderr=${ { stdout=$(ksh /home/t2020091/Linux_Kensyu/Kensyu101/ksh_101_child.ksh); } 2>&1; }

echo "--stdout"
echo $stdout
echo "--stderr"
echo $stderr


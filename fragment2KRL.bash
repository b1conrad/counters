for i in 0 1 2 3 4 5 6 7 8 9
do
  od -t u1 ~/sandbox/howto/count/$i |\
  sed "s/^....... *//" |\
  tr -s ' \n' ',' |\
  sed "s/^\(.*\),$/    D$i = [\1];/"
done

for i in 0 1 2 3 4 5 6 7 8 9              # for the ten digit fragments
do
  od -t u1 ~/sandbox/howto/count/$i |\    # "octal dump" as decimal numbers
  sed "s/^....... *//" |\                 # keep all but the line headers
  tr -s ' \n' ',' |\                      # squeeze blanks and newlines into a single comma
  sed "s/^\(.*\),$/    D$i = [\1];/"      # grab all but the final comma and put it between "    D0 = [" and "];"
done

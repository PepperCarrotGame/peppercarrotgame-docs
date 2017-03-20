SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
for i in $(ls)
do
	if [[ "$i" == *svg ]]
	then
		inkscape -z -e "$i.png" -w 1800 -h 1200 "$i"
	fi
done
IFS=$SAVEIFS


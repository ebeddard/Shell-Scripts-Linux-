
LC_COLLATE=C
echo "Enter a title:"
read title
for token in _${title};
do
     case "${token,,}" in
	   _*[a-z]|_*[A-Z])
	        token="${token:1}"
	        newToken="${token^}"
		newTitle="${newToken}"
		case $newToken in
		    "$token")
		        ;;
		    *)
			echo "'${token}' should be capitalized."
		        ;;
		esac
       		;;
	   a|an|in|out|to|from|for|the|of)
	        newToken="${token,,}"		       
		newTitle="${newTitle} ${newToken}"
	        case $newToken in
		    "$token")
		        ;;
		    *)
			echo "'${token}' should NOT be capitalized."
			;;
		esac
		;;
	   *[a-z]|*[A-Z])
		newToken="${token^}"    
		newTitle="${newTitle} ${newToken}"
	        case $newToken in
		    "$token")
		        ;;
		    *)
			echo "'${token}' should be capitalized"
			;;
		esac
		;;
	   _*)
	       newTitle="${newTitle} ${token:1}"
	       ;;
	   *)
	       newTitle="${newTitle} ${token}"
	       ;;
     esac
done

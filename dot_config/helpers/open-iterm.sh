if [[ -z "$1" ]]
	then
		echo 'opening ./ with Ghostty...'
		open . -a ghostty.app
	else
		echo "opening $1 with Ghostty..."
		open $1 -a ghostty.app
fi

Invoke-Expression (&starship init powershell)

$env:PATH += ":/home/sven/bin"

New-Alias -Name vim		-Value "nvim"
New-Alias -Name dnf 	-Value "dnf5"

function hugos {
	hugo server -D --disableFastRender
}

function CountTags {
	$searchString = $args[0]
	grep -R $searchString . | grep -c "\/posts"
}

function StripMeta {
	$num = $args.Length
	for ($i=0; $i -lt $num; $i++) {
		# echo $args[$i]
		exiv2 -vd a $args[$i]
	}
}

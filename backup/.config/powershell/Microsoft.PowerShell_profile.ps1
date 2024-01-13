Invoke-Expression (&starship init powershell)

$env:PATH += ":/home/sven/bin"

New-Alias -Name vim		-Value "nvim"
New-Alias -Name dnf 	-Value "dnf5"

function hugos {
	hugo server -D --disableFastRender
}

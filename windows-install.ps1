#Requires -RunAsAdministrator

# Install software packages
winget install --id GitHub.cli --accept-source-agreements --silent --source winget
winget install --id vscode --source winget --accept-source-agreements --silent
winget install --id Git.Git -e --source winget --accept-source-agreements --silent
winget install --id Starship.Starship --accept-source-agreements --silent
winget install --id Neovim.Neovim --accept-source-agreements --silent
winget install --exact --id Microsoft.AzureCLI --accept-source-agreements --silent
winget install --id Microsoft.Powershell --source winget --accept-source-agreements --silent
winget install --id OpenWhisperSystems.Signal --source winget --accept-source-agreements --silent
winget install --id Doist.Todoist --source winget --accept-source-agreements --silent
winget install --id Obsidian.Obsidian --source winget --accept-source-agreements --silent
winget install --id mRemoteNG.mRemoteNG --source winget --accept-source-agreements --silent
winget install --id Apple.iCloud --source winget --accept-source-agreements --silent
winget install --id OpenJS.NodeJS --source winget --accept-source-agreements --silent
winget install "Microsoft Loop" --source msstore --accept-source-agreements --silent
winget install --id Mozilla.Firefox --source winget --accept-source-agreements --silent
winget install --id Elgato.StreamDeck --source winget --accept-source-agreements --silent

# Required to run Docker windows containers
Enable-WindowsOptionalFeature -Online -FeatureName $("Microsoft-Hyper-V", "Containers") -All

# Create a symlink to our config directory and PowerShell profile
$linkLocation = ""
if ($PSVersionTable.PSVersion.Major -ge 7) {
	$linkLocation = "~\.config\powershell\profile7.ps1"
}
else {	
	$linkLocation = "~\.config\powershell\profile5.ps1"
}
New-Item -Path $linkLocation -ItemType SymbolicLink -Target $PROFILE -Force

# Reload the profile to apply the new settings
. $PROFILE

$modName = "logistic-wagon"
$version = "0.0.1"

$modFolder = "$env:USERPROFILE\AppData\Roaming\Factorio\mods\$modname" + "_" + "$version"
$gameLocation = 'C:\Program Files (x86)\Steam\steamapps\common\Factorio\bin\x64\factorio.exe'

# First remove the exting version
Remove-Item $modFolder -Recurse -ErrorAction SilentlyContinue

# Copy everthing in the src directory to Factorio's mods folder
Copy-Item -Path ./src -Destination $modFolder -Recurse -Force

Write-Host "Mod data succesfully copied"
Write-Host "Starting factorio..."
& $gameLocation

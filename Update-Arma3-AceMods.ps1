# SET THIS TO YOUR Arma3 Path
$Arma3Path = "F:\SteamLibrary\steamapps\common\Arma 3"

# DO NOT CHANGE THESE
$ACESourcePath = "$Arma3Path\!Workshop\@ace\optionals"
$ACEDestinationPath = "$Arma3Path\!Workshop\@ace\addons"
$ShackTacDestinationPath = "$Arma3Path\!Workshop\@ShackTac User Interface\addons"

#Check for any changes and copy source files
# RHS_AFRF3
Write-Host "Checking RHS_AFRF3"
if (-Not (Test-Path -Path "$ACEDestinationPath\ace_compat_rhs_afrf3*"))
{
    Write-Host "RHS_AFRF3 Missing or Updated.  Copying Files"
    Copy-Item -Path "$ACESourcePath\@ace_compat_rhs_afrf3\*" -Destination $ACEDestinationPath -Force
}
else
{
	Write-Host "RHS_AFRF3 is GOOD TO GO!"
}

#RHS_GREF3
Write-Host "Checking RHS_GREF3"
if (-Not (Test-Path -Path "$ACEDestinationPath\ace_compat_rhs_gref3*"))
{
    Write-Host "RHS_GREF3 Missing or Updated.  Copying Files"
    Copy-Item -Path "$ACESourcePath\@ace_compat_rhs_gref3\*" -Destination $ACEDestinationPath -Force
}
else
{
	Write-Host "RHS_GREF3 is GOOD TO GO!"
}

#RHS_usf3
Write-Host "Checking RHS_usf3"
if (-Not (Test-Path -Path "$ACEDestinationPath\ace_compat_rhs_usf3*"))
{
    Write-Host "RHS_usf3 Missing or Updated.  Copying Files"
    Copy-Item -Path "$ACESourcePath\@ace_compat_rhs_usf3\*" -Destination $ACEDestinationPath -Force
}
else
{
	Write-Host "RHS_usf3 is GOOD TO GO!"
}

#Check and remove all "medical" files from ACE addons path
Write-Host "Checking ACE Medical Files"
if (Test-Path -Path "$ACEDestinationPath\*medical*")
{
	Write-Host "ACE Updated.  Deleting Medical Files"
    Remove-Item -Path "$Arma3Path\!Workshop\@ace\addons\ace_medical*" -Force
}
else
{
	Write-Host "ACE is GOOD TO GO!"
}

#Check and remove autobrightness from ShackTac addons path
Write-Host "Checking ShackTac"
if (Test-Path -Path "$ShackTacDestinationPath\stui_autobrightness*")
{
	Write-Host "ShackTac Updated.  Deleting Files"
    Remove-Item -Path "$ShackTacDestinationPath\stui_autobrightness*" -Force
}
else
{
	Write-Host "ShackTac is GOOD TO GO!"
}
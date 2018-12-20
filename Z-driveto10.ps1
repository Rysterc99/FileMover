#Z-Drive to Windows 10
#
# Script Currently Work's to pull the Folders off of the Z-Drive and merge them with the Existing Folders on Windows 10
#
$env:UserName

$path = "\(fillerData)\$($env:UserName)\Windows7Data" # gets the path from the server to the Z-Drive

$outfile =  "C:\Users\$($env:UserName)" #Gets the File Path the Person's C-Drive 

Get-ChildItem -Path $path | Get-Content | Add-Content -Path $outfile﻿ -Force #Takes the folders from inside Windows7Data and merges them with the existing files in the C Drive


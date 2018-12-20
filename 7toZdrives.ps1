$env:UserName

Test-Path -Path Z:\

##/    Creates 2 Folders in the Z Drive          \##
New-Item -ItemType directory -Path Z:\Windows7Data
New-Item -ItemType directory -Path Z:\FAVORITES
####################################################

#####/     Manually Moves the contents of the D Drive to the Z Drive                     ###\

Copy-Item -Path "D:\Users\$($env:UserName)\Favorites" -Destination Z:\FAVORITES -Recurse

Copy-Item -Path "D:\Users\$($env:UserName)\Contacts" -Destination Z:\Windows7Data -Recurse

Copy-Item -Path "D:\Users\$($env:UserName)\Desktop" -Destination Z:\Windows7Data -Recurse

Copy-Item -Path "D:\Users\$($env:UserName)\Downloads" -Destination Z:\Windows7Data -Recurse

Copy-Item -Path "D:\Users\$($env:UserName)\Favorites" -Destination Z:\Windows7Data -Recurse

Copy-Item -Path "D:\Users\$($env:UserName)\Links" -Destination Z:\Windows7Data -Recurse

Copy-Item -Path "D:\Users\$($env:UserName)\Documents" -Destination Z:\Windows7Data -Recurse 

Copy-Item -Path "D:\Users\$($env:UserName)\Music" -Destination Z:\Windows7Data -Recurse     #Gets a error when copied saying access to the path is Denied but it still copies the contents

Copy-Item -Path "D:\Users\$($env:UserName)\Pictures" -Destination Z:\Windows7Data -Recurse  #Gets a error when copied saying access to the path is Denied but it still copies the contents

Copy-Item -Path "D:\Users\$($env:UserName)\Videos" -Destination Z:\Windows7Data -Recurse    #Gets a error when copied saying access to the path is Denied but it still copies the contents

Copy-Item -Path "D:\Users\$($env:UserName)\Searches" -Destination Z:\Windows7Data -Recurse
##############################################################################################\


Get-ChildItem -Path Z:\Windows7Data -Force # Shows that the Files were actually copied in terminal 

Get-ChildItem -Path Z:\FAVORITES -Force 


Test-Path -Path Z:\ # Confirms that the 2 folders were successfully created

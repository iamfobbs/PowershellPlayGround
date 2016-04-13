param(
    [string]$ComputerName= 'localhost',
    [int]$DriveType =3

)

Get-WmiObject -Class win32_logicaldisk -Filter "DriveType=DriveType" -ComputerName $ComputerName | 
    Select-Object -property @{n='Drive';e={$_.DeviceID}}, 
                            @{n='ComputerName';e={$_.__SERVER}},
                            @{n='FreeSpace(GB)';e={$_.FreeSpace / 1GB -as [int]}},
                            @{n='Size';e={$_.Size / 1GB -as [int]}}
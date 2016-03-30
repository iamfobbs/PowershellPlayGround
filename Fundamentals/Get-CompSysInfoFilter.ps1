#MOST BASIC FUNCTION 3
# FILTERS

filter Get-CompSysInfo {
    Get-WmiObject -Class win32_computersystem -ComputerName $_ | 
        select name, manufacturer, model 
}

Get-Content D:\Projects\PowershellPlayGround\Fundamentals\Files\localServer.txt | Get-CompSysInfo
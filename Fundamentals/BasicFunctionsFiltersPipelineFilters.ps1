#
# BasicFunctionsFiltersPipelineFilters.ps1
#

#BASIC FUNCTION 1
#function Get-ComputerSysInfo {
#Get-WmiObject -Class win32_computersystem  | select name, manufacturer, model 
#}

#Get-ComputerSysInfo


#MOST BASIC FUNCTION 2
function Get-ComputerSysInfo {
    param ([string[]]$ComputerName)

Get-WmiObject -Class win32_computersystem -ComputerName $ComputerName | select name, manufacturer, model 
}

Get-ComputerSysInfo -ComputerName (Get-Content D:\Projects\PowershellPlayGround\Fundamentals\Files\localServer.txt)
#WORKS ALSO: Get-ComputerSysInfo (Get-Content D:\Projects\PowershellPlayGround\Fundamentals\Files\localServer.txt)


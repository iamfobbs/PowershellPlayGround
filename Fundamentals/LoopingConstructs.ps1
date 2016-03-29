#
# LoopingConstructs.ps1
#

# looping contruct

#create running process
1..20 | foreach {notepad}

Get-Process -Name notepad | ForEach-Object  {$PSItem.Kill()}

#add running procs to variable
$processes = Get-Process -Name notepad

#foreach construct
#foreach proc kill it
foreach ($proc in $processes){

    $proc.kill()   

}

# for construct
#for (starting condition ; when to keep repeating ;after the loop completes each time)

$arrayA = "cbtnugget.com","gmail.com","company.com"
$arrayB = "nuggetlabs.com","outlook.com","company.pri"

$emails = "dennis@cbtnugget.com", "rathin@gmail.com", "simon@company.com"

foreach($email in $emails){
    
    for ($x = 0; $x -lt $arrayA.Count ; $x++){
        $email = $email -replace $arrayA[$x],$arrayB[$x]
    }
    Write-Host $email
}


#do 

#$existing =  "Server1","Server2","Server3","Server5"
$existing = Get-Content D:\Projects\PowershellPlayGround\Fundamentals\Files\Servers.txt
#$existing
$candidate = 0

do{

    $candidate++
    $possiblename = "Server$candidate"

}while($existing.Contains($possiblename))
$possiblename
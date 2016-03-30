﻿#PIPELINE FUNCTION

function Get-ComputerSysInfoPipe{
    param([string[]]$ComputerName)

    #executes begin first
        #EX begin could be use in an instance when you want to open a database content to read of for instance.
    BEGIN{}

    # IMPORTANT
        # if you don't pipeline input to it. It will run once.
        # if you PIPE into to it, it will run for each one. EX $computerName param/$variable as illustrated below.
    PROCESS {

        if ($_ -ne $null){
            $ComputerName = $_
        }

        foreach ($computer in $ComputerName){
            Get-WmiObject -Class win32_computersystem -ComputerName $computer |
                Select-Object -Property Name, Manufacturer, Model
        }
    }

    END{}
}

Get-ComputerSysInfoPipe -ComputerName localhost
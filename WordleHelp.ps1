param(
    [Parameter()]
    [String]$with = "",
    [String]$withOut = "",
    [String]$exactPosition = ""
)

$wordsList = Import-Csv -Path .\words5.csv 

$wordsList = $wordsList | Where-Object { $with -eq "" -or $_.word -match '[' + $with + ']'}
                        | Where-Object { $withOut -eq "" -or $_.word -notmatch '[' + $withOut + ']'}  
                        | Where-Object { $exactPosition -eq "" -or $_.word -match $exactPosition.Replace('_', '[a-z]') }  

Write-Output $wordsList.Count

if ($wordsList.Count -gt 20) {
    Write-Output $wordsList |  Get-Random -Count 20
} 
else {
    Write-Output $wordsList    
}


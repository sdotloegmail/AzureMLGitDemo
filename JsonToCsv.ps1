$path = 'C:\Users\stan\Downloads\Datasets\Github\AllGithubCommentsOnIssuesForD3\AllGithubCommentsOnIssuesForD3\'
$files = Get-ChildItem $path -join '*.json'

ForEach ($file in $files) { 
    $psObj = (Get-Content $file -Raw | ConvertFrom-Json) | Convertto-CSV -NoTypeInformation
    Write-Output $file
    $psObj | Out-File $path -join 'csv2.txt' -Append
}

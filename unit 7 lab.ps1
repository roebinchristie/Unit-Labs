$user = read-host "Do you want to exit?"
$user
$server = Get-Content serverlist.csv

while ($user -eq "no"){
    Set-Location C:\
    $Jobs = Import-Csv employeelist.csv 
        ForEach ($Job in $Jobs){
            New-Item -Name $Job.Name.Replace(' ','').ToLower() -Type directory -Path C:\fileserver
            get-job
            New-Item -Name Job.txt -Type file -Value "Welcome, $($Job.Name)!!!!?" -Path C:\fileserver\$($Job.Name.Replace(' ','').ToLower())
        }
    ForEach ($server in $servers){
        Test-Connection -ComputerName $server -Quiet
    }
}
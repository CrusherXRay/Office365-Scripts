$csvpath = 
Import-Csv -Path $csvpath ForEach-Object
    {
    New-MsolUser -FirstName $_.FirstName -LastName $_.LastName -UserPrincipalName $_.UserPrincipalName -DisplayName "$($_.FirstName)$($_.LastName)" -LicenseAssignment 'FlorimUSA:ENTERPRISEPACK' -UsageLocation US
    }

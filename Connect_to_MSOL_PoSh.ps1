<#
Connection to MSOL PoSh

By Gabriel Jensen

#>
$O365Cred = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell/ -Credential $O365Cred -Authentication Basic -AllowRedirection
Import-PSSession $Session


#Remove-PSSession $Session   Disconnect session
Add-PsSnapin VMware.VimAutomation.Core -ea "SilentlyContinue" | Out-Null
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false | Out-Null
Connect-VIServer -Server vcenter-01.pvdairport.com | Out-Null
Get-VM | Get-Snapshot | Format-Table VM, Name, Created, SizeGB -AutoSize
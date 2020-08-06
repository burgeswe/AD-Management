$FirstGroup = Get-ADGroupMember 'first group'
$SecondGroup = Get-ADGroupMember 'second group'
#$csvPath = 'path for exportable csv if desired'

Compare-Object $FirstGroup $SecondGroup -Property 'SamAccountName' -IncludeEqual
Compare-Object $FirstGroup $SecondGroup -Property 'SamAccountName' -IncludeEqual | Export-Csv $csvPath -NoTypeInformation
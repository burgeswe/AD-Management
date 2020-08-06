$group1 = Get-ADGroupMember -Identity 'groupname1' -Recursive | %{Get-ADUser $_.samAccountName | select samAccountName}
$group2 = Get-ADgroup -Identity 'groupname2'

Foreach ($user in $group1)

{
Remove-adgroupmember -identity $group2 -members $user.SamAccountName -Confirm:$false
}
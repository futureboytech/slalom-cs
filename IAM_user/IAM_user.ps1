$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "<Password>"
New-AzureADUser -AccountEnabled $True -DisplayName "Abby Brown" -PasswordProfile $PasswordProfile -MailNickName "AbbyB" -UserPrincipalName "AbbyB@contoso.com"
Connect-AzAccount -UseDeviceAuthentication
$user = Get-AzADUser -UserPrincipalName (Get-AzContext).Account
New-AzRoleAssignment -Scope '/providers/Microsoft.Management/managementGroups/slalomraj2/slalomraj2-sandboxes' -RoleDefinitionName 'Owner' -ObjectId $user.Id


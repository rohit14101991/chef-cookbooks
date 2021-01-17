powershell_script 'set_interactive_logon' do
  code <<-EOH
  $accountToAdd = "Administrators"
  $sidstr = $null
  try {
    $ntpprincipal = new-object System.Security.Principal.NTAccount "$accountToAdd"
    $sid = $ntpprincipal.Translate([System.Security.Principal.SecurityIdentifier])
    $sidstr = $sid.Value.ToString()
  } catch {
    $sidstr = $null
  }
  $tmp = [System.IO.Path]::GetTempFileName()
  secedit.exe /export /cfg "$($tmp)"
  $c = Get-Content -Path $tmp
  $currentSetting = ""
  foreach($s in $c) {
    if( $s -like "SeDenyInteractiveLogonRight*") {
      $x = $s.split("=",[System.StringSplitOptions]::RemoveEmptyEntries)
      $currentSetting = $x[1].Trim()
    }
  }
  $outfile = @"
  [Unicode]
  Unicode=yes
  [Version]
  signature="`$CHICAGO`$"
  Revision=1
  [Privilege Rights]
  SeInteractiveLogonRight = $($currentSetting)
"@
  $tmp2 = [System.IO.Path]::GetTempFileName()
  $outfile | Set-Content -Path $tmp2 -Encoding Unicode -Force
  Push-Location (Split-Path $tmp2)
  try
  {
    secedit.exe /configure /db "secedit.sdb" /cfg "$($tmp2)" /areas USER_RIGHTS
  } finally { Pop-Location}
  EOH
end

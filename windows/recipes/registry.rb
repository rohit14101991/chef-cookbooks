windows_service 'SNMP' do
	action [:enable, :start]
end

powershell_script 'set_interactive_logon' do
  code <<-EOH
  Set-ItemProperty -Path 'HKLM:/Software/Microsoft/Windows/CurrentVersion/Policies/System' -Name DisableCAD -Value 0
  EOH
end

powershell_script 'set_interactive_logon' do
  code <<-EOH
  Get-LocalUser -Name "Administrator" | Enable-LocalUser 
  EOH
end

registry_key node['windows']['NtpClinet'] do
  values [{
    :name => 'Enabled' ,
    :type => :dword,
    :data => 1
  }]
  recursive true
  action :create
end  

registry_key node['windows']['NtpServer'] do
  values [{
    :name => 'Disabled' ,
    :type => :dword,
    :data => 0
  }]
  recursive true
  action :create
end 
# PREFLIGHT-CHECK
# fs.file-max is at least 64000
fs_file_max = shell_out('sysctl -n fs.file-max').stdout.strip.to_i
sysctl 'fs.file-max' do
  value node['mongo']['sysctl']['fs.file-max']
  not_if { fs_file_max > 64000 }
end

# vm.max_map_count must be at least 262144
vm_max_map_count = shell_out('sysctl -n vm.max_map_count').stdout.strip.to_i
sysctl 'vm.max_map_count' do
  value node['mongo']['sysctl']['vm.max_map_count']
  not_if { vm_max_map_count > 262144 }
end


# vm.dirty_expire_centisecs must be between 10000 and 30000
vm_dirty_expire_centisecs = shell_out('sysctl -n vm.dirty_expire_centisecs').stdout.strip.to_i
sysctl 'vm.dirty_expire_centisecs' do
  value node['mongo']['sysctl']['vm.dirty_expire_centisecs']
  not_if { (vm_dirty_expire_centisecs > 10000) && (vm_dirty_expire_centisecs < 30000) }
end
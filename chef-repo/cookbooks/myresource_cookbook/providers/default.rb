
action :cleanup do
	Chef::Log.info "Im in cleanup action#{new_resource.config_file}"
	Chef::Log.info "#{new_resource.working_dir}"
	Chef::Log.info "#{new_resource.name}"

end

action :prepare do 
	Chef::Log.info "Im in prepare action#{new_resource.config_file}"
	Chef::Log.info "#{new_resource.working_dir}"
	Chef::Log.info "#{new_resource.name}"
end

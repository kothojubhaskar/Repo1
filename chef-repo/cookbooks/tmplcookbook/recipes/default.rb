directory '/tmp/ppriyasr' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

template '/tmp/ppriyasr/motd' do
  source 'templ.erb'
  owner 'root'
  group 'root'
  mode '0755'
    variables({
     :sudoers_groups => node[:attributes][:sudo][:groups],
     :sudoers_users => node[:attributes][:sudo][:users],
     :passwordless  => node[:attributes][:passwords]
  })
end
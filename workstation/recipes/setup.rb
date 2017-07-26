package 'tree' do
	action :install
end

package 'ntp'

##### OHAI details start####
#file '/etc/motd' do
#	content "This server is the property of Raju
#       HOSTNAME: #{node['hostname']}
#        IPADDRESS: #{node['ipaddress']} 
#        CPU: #{node['cpu']['0']['mhz']}
#        MEMORY: #{node['memory']['total']}  
#        "
#end
##### OHAI details end####

##### Template details start #####
    template '/etc/motd' do
    source 'motd.erb'
    action :create
end

##### Template details end   ##### 

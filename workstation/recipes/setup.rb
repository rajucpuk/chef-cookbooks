package 'tree' do
	action :install
end

package 'ntp'

file '/etc/motd' do
	content "This server is the property of Raju
        HOSTNAME: #{node['hostname']}
        IPADDRESS: #{node['ipaddress']} 
        CPU: #{node['cpu']['0']['mhz']}
        MEMORY: #{node['memory']['total']}  
        "
end


package 'httpd' do
	action :install
end

##### file changes start #####
#file '/var/www/html/index.html' do
#	content "<h1>Hello world! from Chef tutorial</h1>
#       HOSTNAME: #{node['hostname']}  
#        HOSTADDRESS: #{node['ipaddress']}
#        "  
#
#end
##### file changes ends  #####

##### Templates changes start #####
template '/var/www/html/index.html' do
source 'index.html.erb'
action :create
end
##### Template changes ends   #####


service 'httpd' do
	action [:enable,:start ]
end



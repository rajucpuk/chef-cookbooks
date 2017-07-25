package 'tree' do
	action :install
end

package 'ntp'

file '/etc/motd' do
	content 'This server is the property of Raju C...'
	action :create
	owner 'root'
	group 'root'
end

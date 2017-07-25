package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content '<h1>Hello world! from Chef tutorial</h1>'
end

service 'httpd' do
	action [:enable,:start ]
end
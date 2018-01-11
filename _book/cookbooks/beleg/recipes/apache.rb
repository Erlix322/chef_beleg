#
# Cookbook:: .
# Recipe:: apache
#
# Copyright:: 2017, The Authors, All Rights Reserved.



include_recipe 'apache2::default'

web_app node['itsm']['name'] do
	template "#{node['itsm']['config']}.erb"
end

directory node['apache']['docroot_dir'] do	
	recursive true
end

file "#{node['apache']['docroot_dir']}/index.html" do
	content '<html>Hello Beleg</html>'
	mode 0755
end

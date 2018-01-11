#
# Cookbook:: .
# Recipe:: firewall
#
# Copyright:: 2017, The Authors, All Rights Reserved.



firewall 'default'

firewall_rule 'ssh' do
	port 22
	command :allow
end


firewall_rule 'http' do
	port 80
	protocol :tcp
	command :allow
end


firewall_rule 'https' do
	port 443
	protocol :tcp
	command :allow
end


firewall_rule 'remotedesk' do
	port 3389
	command :deny
end

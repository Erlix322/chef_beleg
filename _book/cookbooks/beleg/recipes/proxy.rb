#
# Cookbook:: .
# Recipe:: proxy
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file "/tmp/proxy.txt"

bash "config proxy" do
	code "sudo cat /tmp/proxy.txt >> /etc/environment"
end
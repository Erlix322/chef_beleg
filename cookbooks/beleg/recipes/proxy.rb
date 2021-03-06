#
# Cookbook:: .
# Recipe:: proxy
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file "/tmp/proxy.txt"

bash "config proxy" do
	code "sudo cat /tmp/proxy.txt >> /etc/environment"
end

bash "config proxy bash" do
	code "sudo cat /tmp/proxy.txt >> /home/labornutzer/.bashrc" 
end

bash "config proxy profile" do
	code "sudo cat /tmp/proxy.txt >> /home/labornutzer/.profile"
end

bash "source files" do
	code "source /etc/environment && source /home/labornutzer/.profile"
end


# Erstellung von Rezepten

Zur Erstellung von Rezepten wechseln Sie in ihr Cookbook.

> cd ./beleg 

Der Befehl für die Erstellung der Rezepte sieht wie folgt aus.
> chef generate recipe [Name]

In Anlehnung an die Aufgabenstellung erfolgt die Erstellung von allen Rezepten mit passenden Namen.

* chef generate recipe apache
* chef generate recipe chrome
* chef generate recipe eclipse
* chef generate recipe firefox
* chef generate recipe firewall
* chef generate recipe htop
* chef generate recipe libre
* chef generate recipe mysql
* chef generate recipe proxy
* chef generate recipe user
* chef generate recipe vim

# Apache Rezept
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/apache2.svg?style=flat)](https://supermarket.chef.io/cookbooks/apache2)

```ruby
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
```

# Chrome Rezept
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/chrome.svg?style=flat)](https://supermarket.chef.io/cookbooks/chrome)


```ruby
    include_recipe 'chrome'
```
# Eclipse Rezept
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/eclipse.svg?style=flat)](https://supermarket.chef.io/cookbooks/eclipse)


```ruby
    apt_package 'eclipse' do
	action :upgrade
    end
```

# Firefox Rezept
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/firefox.svg?style=flat)](https://supermarket.chef.io/cookbooks/firefox)


```ruby
    include_recipe 'firefox'
```

# Firewall Rezept
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/firewall.svg?style=flat)](https://supermarket.chef.io/cookbooks/firewall)


```ruby
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
```

# Htop Rezept
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/htop.svg?style=flat)](https://supermarket.chef.io/cookbooks/htop)


```ruby
    include_recipe 'htop'
```

# Libre Rezept

```ruby
    execute "Remove libre" do
	  command "sudo apt-get -y remove libreoffice* --purge"
    end
```

# MySql Rezept
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/mysql.svg?style=flat)](https://supermarket.chef.io/cookbooks/mysql)


```ruby
    mysql_service 'foo' do
        port '3306'
        version '5.7'
        initial_root_password 'foo'
        action [:create, :start]
    end
```

# Proxy Rezept
Die Aktuelle Version dieses Cookbooks  

```ruby
cookbook_file "/tmp/proxy.txt"

    bash "config proxy" do
	    code "sudo cat /tmp/proxy.txt >> /etc/environment"
    end
```

# User Rezept

```ruby
    group 'users'



    directory_name = "/home/labornutzer"
    Dir.mkdir(directory_name) unless File.exists?(directory_name)



    user 'labornutzer' do
        action :create
        group 'users'
        shell '/bin/bash'
        password '$1$LTzdkMd2$5Mht956UnTjk1VFQhNu2Q0'
            manage_home true
        home '/home/labornutzer'
    end

    execute 'chown user directory' do
        command 'chown labornutzer:users /home/labornutzer'
    end
```

# Vim Rezept
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/vim.svg?style=flat)](https://supermarket.chef.io/cookbooks/vim)


```ruby
    include_recipe 'vim'
```

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

## Apache Rezept {#apache}
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/apache2.svg?style=flat)](https://supermarket.chef.io/cookbooks/apache2)  

Beschreibung:
Erstellt auf dem Node-System einen Apache2 Server und richtet diesen ein. Als Standardseite wird ein HTML Dokument mit dem Text "Hello Beleg" angelegt.

Das verwendete Template ist hier zu finden:
[Template](https://github.com/Erlix322/chef_beleg/blob/master/cookbooks/beleg/templates/itsm_conf.erb)

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

**TEST:** Öffnen Sie auf der Node einen Browser und geben Sie *localhost* in die Adresszeile ein.

# Chrome Rezept {#chrome}
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/chrome.svg?style=flat)](https://supermarket.chef.io/cookbooks/chrome)  

**Beschreibung**:Installiert einen Chrome Browser in der aktuellen Version auf der Node.

```ruby
    include_recipe 'chrome'
```

**TEST:** Öffnen Sie auf der Node den Chrome Browser

# Eclipse Rezept {#eclipse}
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/eclipse.svg?style=flat)](https://supermarket.chef.io/cookbooks/eclipse)

**Beschreibung:** Installiert eine Eclipse Standardversion auf der Node.


```ruby
    apt_package 'eclipse' do
	action :upgrade
    end
```
**TEST:** Öffnen Sie auf der Node Eclipse
# Firefox Rezept {#firefox}
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/firefox.svg?style=flat)](https://supermarket.chef.io/cookbooks/firefox)

**Beschreibung:** installiert einen Firefox Browser in der aktuellen Version auf der Node.

```ruby
    include_recipe 'firefox'
```  
**TEST:** Öffnen sie den Browser in der Node

# Firewall Rezept {#firewall}
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/firewall.svg?style=flat)](https://supermarket.chef.io/cookbooks/firewall)

**Beschreibung:** Installiert eine Firewall auf der Node mit den geöffneten Ports: 22, 80, 443

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

# Htop Rezept {#htop}
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/htop.svg?style=flat)](https://supermarket.chef.io/cookbooks/htop) 
  
**Beschreibung:** Installation des Programms htop


```ruby
    include_recipe 'htop'
```

**TEST:** Geben Sie den Befehl htop in ein Geöffnetes Terminal ein.

# Libre Rezept {#libre}

**Beschreibung:** Löscht Libre Office und alle zugehörigen Komponenten vom Node System.  

```ruby
    execute "Remove libre" do
	  command "sudo apt-get -y remove libreoffice* --purge"
    end
```

# MySql Rezept {#mysql}
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/mysql.svg?style=flat)](https://supermarket.chef.io/cookbooks/mysql)

**Beschreibung:** Installiert einen mysql Server auf der Node.

```ruby
    mysql_service 'foo' do
        port '3306'
        version '5.7'
        initial_root_password 'foo'
        action [:create, :start]
    end
```
**TEST:** Geben Sie in einem Terminal folgenden Befehl ein:  
> mysql -S /var/run/mysql-foo/mysqld.sock -u root -p

# Proxy Rezept {#proxy}
 
**Beschreibung:** Richtet den Proxy auf dem Node System ein.

```ruby
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
```

# User Rezept {#user}

**Beschreibung:** Richtet einen Labornutzer mit den Nuterdaten labornutzer und Passwort nutzer@labor123 an.

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

# Vim Rezept {#vim}
Die Aktuelle Version dieses Cookbooks  
[![Cookbook Version](https://img.shields.io/cookbook/v/vim.svg?style=flat)](https://supermarket.chef.io/cookbooks/vim)

**Beschreibung:** installiert vim auf dem Node System.

```ruby
    include_recipe 'vim'
```

**TEST:** Geben sie den Befehl vim in ein geöffnetes Terminal ein.

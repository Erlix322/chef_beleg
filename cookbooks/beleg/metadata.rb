name 'beleg'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures beleg'
long_description 'Installs/Configures beleg'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'vim', '~> 2.0.2'
depends 'mysql', '~> 8.5.1'
depends 'firewall', '~> 2.6.2'
depends 'apache2', '~> 5.0.1'
depends 'firefox', '~> 4.0.0'
depends 'htop', '~> 2.0.0'
depends 'chrome', '~> 4.0.2'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/beleg/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/beleg'

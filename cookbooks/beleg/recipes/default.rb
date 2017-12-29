#
# Cookbook:: beleg
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


include_recipe 'beleg::apache'
#include_recipe 'beleg::firefox'
#include_recipe 'beleg::htop'
include_recipe 'beleg::mysql'
include_recipe 'beleg::user'
#include_recipe 'beleg::chrome'
include_recipe 'beleg::eclipse'
include_recipe 'beleg::firewall'
include_recipe 'beleg::libre'
#include_recipe 'beleg::proxy'
include_recipe 'beleg::vim'


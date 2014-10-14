#
# Cookbook Name:: jmxtrans-wrapper
# Recipe:: default
#
# Copyright (C) 2014 Lookout, Inc.
#
#

# install jmxtrans
include_recipe "jmxtrans::install"
include_recipe "jmxtrans::service"

# let's configure jmxtrans
# - Per the jmxtrans README, create_yaml_templates_dir() must be
#   called before using jmxtrans::config_render
create_yaml_templates_dir(node['jmxtrans']['templates_yaml_source'],
 node['jmxtrans']['templates_yaml_destination'])
include_recipe "jmxtrans::config_render"
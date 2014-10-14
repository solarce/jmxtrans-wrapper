# Default Attributes

# jmxtrans
default['jmxtrans']['log_level'] = "info"
default['jmxtrans']['run_interval'] = '10'
default['jmxtrans']['graphite']['host'] = "graphite1"
default['jmxtrans']['graphite']['port'] = "2003"
default['jmxtrans']['templates_yaml_source'] = "templates_yaml"
default['jmxtrans']['templates_yaml_destination'] = "#{node['jmxtrans']['config_dir']}/templates_yaml"
#
# Cookbook Name:: consul-services
# Recipe:: wordpress
#
# Copyright (C) 2014
#
#
#

include_recipe 'curl::default'

consul_service_def 'wordpress' do
  check(
    interval: '10s',
    script: 'curl http://localhost/wp/wp-login.php | grep Username || exit 2'
  )
  notifies :restart, "service[consul]", :delayed
end

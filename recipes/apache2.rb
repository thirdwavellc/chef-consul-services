#
# Cookbook Name:: consul-services
# Recipe:: apache2
#
# Copyright (C) 2014
#
#
#

consul_service_def 'apache2' do
  port 80
  check(
    interval: '10s',
    script: 'pgrep apache2 || exit 2'
  )
  notifies :restart, "service[consul]", :delayed
end

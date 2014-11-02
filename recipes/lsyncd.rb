#
# Cookbook Name:: consul-services
# Recipe:: lsyncd
#
# Copyright (C) 2014
#
#
#

consul_service_def 'lsyncd' do
  check(
    interval: '10s',
    script: 'pgrep lsyncd || exit 2'
  )
  notifies :restart, "service[consul]", :delayed
end

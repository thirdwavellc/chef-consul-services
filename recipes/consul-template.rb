#
# Cookbook Name:: consul-services
# Recipe:: consul-template
#
# Copyright (C) 2014
#
#
#

consul_service_def 'consul-template' do
  check(
    interval: '10s',
    script: 'pgrep consul-template || exit 2'
  )
  notifies :restart, "service[consul]", :delayed
end

#
# Cookbook Name:: consul-services
# Recipe:: varnish
#
# Copyright (C) 2014
#
#
#

consul_service_def 'varnish' do
  port 6081
  check(
    interval: '10s',
    script: 'pgrep varnish || exit 2'
  )
  notifies :restart, "service[consul]", :delayed
end

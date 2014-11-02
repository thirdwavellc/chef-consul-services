#
# Cookbook Name:: consul-services
# Recipe:: haproxy
#
# Copyright (C) 2014
#
#
#

consul_service_def 'haproxy' do
  port 80
  check(
    interval: '10s',
    script: 'pgrep haproxy || exit 2'
  )
  notifies :restart, "service[consul]", :delayed
end

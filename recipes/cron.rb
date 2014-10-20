#
# Cookbook Name:: consul-services
# Recipe:: cron
#
# Copyright (C) 2014
#
#
#

consul_service_def 'cron' do
  check(
    interval: '10s',
    script: 'pgrep cron'
  )
  notifies :restart, "service[consul]", :delayed
end

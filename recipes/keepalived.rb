#
# Cookbook Name:: consul-services
# Recipe:: keepalived
#
# Copyright (C) 2014
#
#
#

consul_check_def 'keepalived' do
  interval '10s'
  script 'pgrep keepalived || exit 2'
  notifies :restart, "service[consul]", :delayed
end

#
# Cookbook Name:: consul-services
# Recipe:: lsyncd
#
# Copyright (C) 2014
#
#
#

consul_check_def 'lsyncd' do
  interval '10s'
  script 'pgrep lsyncd || exit 2'
  notifies :restart, "service[consul]", :delayed
end

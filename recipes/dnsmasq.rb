#
# Cookbook Name:: consul-services
# Recipe:: dnsmasq
#
# Copyright (C) 2014
#
#
#

consul_check_def 'dnsmasq' do
  interval '10s'
  script 'pgrep dnsmasq || exit 2'
  notifies :restart, "service[consul]", :delayed
end

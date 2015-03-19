#
# Cookbook Name:: motd-tail-umts
# Recipe:: default
#
# Copyright (c) 2015 UMass Transit.

motd_tail '/etc/motd.tail' do
  template_source 'motd.tail.erb'
end

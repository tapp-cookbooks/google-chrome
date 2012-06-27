#
# Cookbook Name:: google-chrome
# Recipe:: default
#
# Copyright 2012, Besol Soluciones S.L.
#
# All rights reserved - Do Not Redistribute
#

windows_package "Google Chrome" do
  source node[:'google-chrome'][:msi_url]
  action :install
end

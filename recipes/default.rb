#
# Cookbook Name:: hbase
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# include_recipe "java"

# remote_file "#{Chef::Config[:file_cache_path]}/#{node['hbase']['file_base']}.tar.gz" do |a|
# 	pp a
# 	# source "http://ftp.kddilabs.jp/infosystems/apache/hbase/hbase-0.94.20/hbase-0.94.20.tar.gz"
# 	source "#{node['hbase']['source_url']}"
# end

# execute "unpacked_hbase" do
# 	loc = "#{Chef::Config[:file_cache_path]}/#{node['hbase']['file_base']}.tar.gz"
# 	command <<-EOH
# 		tar zxf "#{loc}" -C #{node['hbase']['install_location']}
# 	EOH
# end

# execute "start_hbase" do
# 	installed = "#{node['hbase']['install_location']}/#{node['hbase']['file_base']}"
# 	command <<-EOH
# 		chown -R vagrant. #{installed}
# 		#{installed}/bin/start-hbase.sh
# 	EOH
# 	# not_if "pgrep -fl hbase"
# end
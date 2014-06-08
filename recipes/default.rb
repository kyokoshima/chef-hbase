#
# Cookbook Name:: hbase
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


include_recipe "java"

remote_file "#{Chef::Config[:file_cache_path]}/hbase-0.94.20.tar.gz" do |a|
	pp a
	source "http://ftp.kddilabs.jp/infosystems/apache/hbase/hbase-0.94.20/hbase-0.94.20.tar.gz"
end

execute "unpacked_hbase" do
	loc = "#{Chef::Config[:file_cache_path]}/hbase-0.94.20.tar.gz"
	command <<-EOH
		tar zxf "#{loc}" -C /tmp
	EOH
end
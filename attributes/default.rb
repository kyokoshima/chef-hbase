default["java"]["install_flavor"] = "oracle"
default["java"]["jdk_version"] = "6"
default["java"]["oracle"]["accept_oracle_download_terms"] = true

default["hbase"]["version"] = "0.94.20"

default["hbase"]["file_base"] = "hbase-#{node['hbase']['version']}"
default["hbase"]["source_url"] = "http://ftp.kddilabs.jp/infosystems/apache/hbase/hbase-#{node['hbase']['version']}/#{node['hbase']['file_base']}.tar.gz"
default["hbase"]["install_location"] = "/tmp"

default['hbase']['cdh_repo_file'] = 'http://archive.cloudera.com/redhat/6/x86_64/cdh/cloudera-cdh3.repo'
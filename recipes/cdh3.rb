
remote_file "/etc/yum.repos.d/cloudera-cdh3.repo" do
  source node['hbase']['cdh_repo_file']
end
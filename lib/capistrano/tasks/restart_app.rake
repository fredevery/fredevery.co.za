desc "Building Meteor App"
task :restart_app do
  on roles(:all) do |host|
    execute :sudo, 'service fredevery.co.za stop'
    execute :sudo, 'service fredevery.co.za start'
  end
end

desc "Building Meteor App"
task :restart_app do
  on roles(:all) do |host|
    execute :sudo, 'service fredevery stop'
    execute :sudo, 'service fredevery start'
  end
end

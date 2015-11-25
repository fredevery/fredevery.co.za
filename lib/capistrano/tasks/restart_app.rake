desc "Building Meteor App"
task :restart_app do
  on roles(:all) do |host|
    execute :service, 'fredevery stop'
    execute :service, 'fredevery start'
  end
end

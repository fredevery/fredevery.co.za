desc "Start Meteor App"
task :start_app do
  on roles(:all) do |host|
    execute :sudo, 'service fredevery start'
  end
end

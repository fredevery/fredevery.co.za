desc "Building Meteor App"
task :compass_compile do
  on roles(:all) do |host|
    within release_path do
      execute :meteor, "remove francocatena:compass"
      execute :meteor, "remove fourseven:scss"
      execute :bundle, "exec compass compile"
    end
  end
end

task :build_app do
  on roles(:all) do |host|
    within release_path do
      execute "export AUTOUPDATE_VERSION=$(cat REVISION)"
      execute :meteor, "build #{fetch(:build_path)} --server=#{fetch(:build_server)} --directory"
    end

    within File.join(fetch(:build_path), 'bundle/programs/server') do
      execute :npm, "install"
    end
  end
end

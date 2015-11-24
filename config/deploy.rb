# config valid only for current version of Capistrano
lock '3.3.5'

set :application, 'FredEvery.co.za'
set :repo_url, 'git@github.com:fredevery/fredevery.co.za.git'
set :scm, :git
set :deploy_via, :remote_cach
set :user, "fuxe"

set :log_level, :info

set :deploy_to, '/home/fuxe/www/fredevery.co.za'
set :build_path, File.join(deploy_to, 'build')

set :use_sudo, false

set :normalize_asset_timestamps, false

set :pty, true

set :meteor, "meteor"

set :rvm1_alias_name, "fredevery"
set :rvm1_ruby_version, "2.2.0"

# before "rvm1:install:rvm", "update_rvm_key"
#
# before 'deploy', 'rvm1:install:rvm'
# before 'deploy', 'rvm1:install:ruby'
# before 'deploy', 'rvm1:install:gems'
# before 'compass_compile', 'rvm1:hook'

namespace :deploy do

  after :updated, :build_app
  after :finished, :start_app
  after :finished, :restart_app

end

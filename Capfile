load 'deploy' if respond_to?(:namespace) # cap2 differentiator

default_run_options[:pty] = true

set :user, 'ipartners'
set :domain, 'nfs.ipartners.com'

set :repository,  "git@ipartners.beanstalkapp.com:/mock-nfs-service.git"
set :deploy_to, "/home/ipartners/#{domain}"

set :deploy_via, :remote_cache
set :scm, 'git'
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true
set :use_sudo, false

server domain, :app, :web

namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
end
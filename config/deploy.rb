# require "bundler/capistrano"

set :user, "bankonet"
set :application, "bankonet"
set :branch, "master"
set :domain, "ssh.alwaysdata.com"

server domain, :app, :web
role :db, domain, :primary => true
set :runner, user

ssh_options[:forward_agent] = true
set :scm, :git
set :repository, "ssh://bankonet@ssh.alwaysdata.com/~/git/bankonet.git"
set :deploy_via, :remote_cache
set :git_enable_submodules, 1
set (:deploy_to) {"/home/bankonet/rails/#{application}"}
set :keep_releases, 5
default_run_options[:pty] = true
set :use_sudo, false

after 'deploy:update_code' do
  run <<-CMD
    ln -nfs #{shared_path}/config/environments/production.rb #{release_path}/config/environments/production.rb
  CMD
  run <<-CMD
    ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml
  CMD
  %w(files sitemap.xml robots.txt dispatch.fcgi .htaccess).each do |file|
    run <<-CMD
      ln -nfs #{shared_path}/public/#{file} #{release_path}/public/#{file}
    CMD
  end
  # Solution d'attente pour bundle install
  run <<-CMD 
    cd #{release_path} && /home/bankonet/gems/bin/bundle install --deployment --without development test
  CMD
  #run "cd #{release_path} ; rake RAILS_ENV=production gems:build"
end
after "deploy", "deploy:cleanup"
after "deploy:migrations", "deploy:cleanup"

namespace :deploy do
  task :cold do
    update
    load_schema
    start
  end

  task :load_schema, :roles => :app do
    run "cd #{current_path}; rake RAILS_ENV=production db:schema:load"
  end
end

deploy.task :start do
   # nothing
end
deploy.task :stop do
  # nothing
end
deploy.task :restart do
  # nothing
end
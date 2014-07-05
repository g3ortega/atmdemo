# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, 'atmapp'

set :user, 'root'
set :port, 22

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
set :deploy_to, "/#{fetch(:user)}/atmapp"
set :deploy_via, :remote_cache

# set :repo_url, 'git://bitbucket.org/kakaomedia/ticket_app.git'
set :repo_url, 'git@github.com:g3ortega/atmdemo.git'

# set :linked_files, %w{config/database.yml}
set :linked_dirs, ['tmp/pids']
set :linked_files, %w{config/secrets.yml config/database.yml}


# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  # desc 'Restart application'
  # task :restart do
  #   invoke 'unicorn:restart'
  # end

  # desc 'Verify local repo is updated'
  # after :finished, :check_revision do
  #   on roles(:web) do
  #     unless 'git rev-parse HEAD' == 'git rev-parse origin/master'
  #       puts "WARNING: HEAD is not the same as origin master"
  #       puts "Run 'git push' to sync changes"
  #       exit
  #     end
  #   end
  # end

  # after 'deploy:publishing', 'deploy:restart'
  after :finishing, 'deploy:cleanup'

end

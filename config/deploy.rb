# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'jam_quiz_api'
set :repo_url, 'git@github.com:atul3010/jam-quiz-api.git'
set :branch, :master
set :deploy_to, "/home/ubuntu/projects#{fetch(:application)}"
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

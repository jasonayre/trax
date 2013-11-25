# desc "Explaining what the task does"
# task :trax do
#   # Task goes here
# end
namespace :db do
  desc "destroy_and_rebuild"
  task :destroy_and_rebuild => :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
  end
end
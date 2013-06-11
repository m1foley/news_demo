#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'rspec/core/rake_task'
require File.expand_path('../config/application', __FILE__)

RSpec::Core::RakeTask.new(:spec) do |config|
end

task :default => :spec do
end

NewsDemo::Application.load_tasks

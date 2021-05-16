# frozen_string_literal: true

require 'rspec/core/rake_task'
require 'rubocop/rake_task'

task default: %w[run]

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['lib/**/*.rb', 'spec/**/*.rb']
  task.options = ['--auto-correct-all']
  task.fail_on_error = false
end

RSpec::Core::RakeTask.new(:spec)

task :run do
  ruby 'lib/rest_starter.rb'
end

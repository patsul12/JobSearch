require 'rspec/core' unless defined? Rspec.configure

# Check if a zeus server is running
def zeus_running?
  File.exists? '.zeus.sock'
end

# If not start simplecov like you normally would, 
# Otherwise zeus is running simple cov with rules defined in custom_plan.rb
if !zeus_running?
  require 'simplecov'
  SimpleCov.start
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

=begin
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.example_status_persistence_file_path = "spec/examples.txt"

  config.disable_monkey_patching!

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10

  config.order = :random

  Kernel.srand config.seed
=end
end

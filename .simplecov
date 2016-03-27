require 'simplecov'
SimpleCov.configure do
  SimpleCov.refuse_coverage_drop
  add_filter "/spec/"
  add_filter "/config/"
  SimpleCov.minimum_coverage 93
end

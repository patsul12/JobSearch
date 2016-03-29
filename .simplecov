require 'simplecov'
SimpleCov.configure do
  SimpleCov.refuse_coverage_drop
  add_filter "/spec/"
  add_filter "/config/"
end

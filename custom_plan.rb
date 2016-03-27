require 'zeus/rails'

class CustomPlan < Zeus::Rails
  def test
    require 'simplecov'
    SimpleCov.start 'rails'
    Dir["#{Rails.root}/app/**/*.rb"].each { |f| load f }
    super
  end
end

Zeus.plan = CustomPlan.new

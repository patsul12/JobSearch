require 'rails_helper'

RSpec.describe Company, type: :model do
  it { should have_many :job_applications }
  it { should validate_presence_of :name }
end

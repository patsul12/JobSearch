require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :job_applications }
  it { should validate_presence_of :username }
end

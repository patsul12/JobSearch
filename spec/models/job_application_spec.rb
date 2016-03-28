require 'rails_helper'

RSpec.describe JobApplication, type: :model do
  it { should validate_presence_of :status }
  it { should validate_presence_of :company_id }
  it { should belong_to :user }
  it { should belong_to :company }
end

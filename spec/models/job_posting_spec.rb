require 'rails_helper'

RSpec.describe JobPosting, type: :model do
  it { should validate_presence_of :url }
  it { should belong_to :user }
end

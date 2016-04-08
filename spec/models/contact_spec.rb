require 'rails_helper'

RSpec.describe Contact, type: :model do
  it { should have_and_belong_to_many :job_applications }
  it { should belong_to :user }
end

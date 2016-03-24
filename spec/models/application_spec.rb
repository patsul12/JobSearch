require 'rails_helper'

RSpec.describe Application, type: :model do
  it { should belong_to :user }
end

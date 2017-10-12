require 'rails_helper'

RSpec.describe Pet, type: :model do

  it { should belong_to(:user) }
  it { is_expected.to validate_numericality_of(:age).only_integer }
  it { should validate_presence_of(:photos) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:race) }
  
end

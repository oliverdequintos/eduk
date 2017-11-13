require 'rails_helper'

RSpec.describe User, type: :model do

  context "get_gender" do
    user = FactoryGirl.create :user
    it { expect(user.get_gender).to eq('Male') }
  end

  context "empty fields" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:date_of_birth) }
    it { should validate_presence_of(:gender) }
    it { should validate_presence_of(:email) }
  end
  
end

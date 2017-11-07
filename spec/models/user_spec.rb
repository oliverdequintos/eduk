require 'rails_helper'

RSpec.describe User, type: :model do

  context "get_gender" do
    user = FactoryGirl.create :user
    it { expect(user.get_gender).to eq('Male') }
  end
end

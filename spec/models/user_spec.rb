require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    # it "should validate presence of name" do
    #   user = User.new(name: 'Sami')
    #   expect(user.valid?).to be true
    # end

    it { should validate_presence_of(:name) }

    it 'should validate absence of name' do
      user = User.new(name: '')
      expect(user.valid?).to be false
    end
  end

  describe 'Associations' do
    it { should have_many(:posts) }
    it { should have_many(:comments) }
    it { should have_many(:likes) }
    it { should have_many(:friendships) }
    it { should have_many(:inverse_friendships) }
    it { should have_many(:confirmed_friendships) }
    it { should have_many(:friends).through(:confirmed_friendships) }
    it { should have_many(:inverted_friendships) }
    it { should have_many(:friend_requests).through(:inverted_friendships) }
    

  end
end

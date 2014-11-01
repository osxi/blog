require 'rails_helper'

RSpec.describe Post, :type => :model do
  let(:post) { FactoryGirl.create(:post) }

  context 'posts factory' do
    it 'is valid' do
      expect(post).to be_valid
    end
  end

  it 'is invalid without a title' do
    post = FactoryGirl.build(:post, title: nil)
    expect(post).to be_invalid
  end
end

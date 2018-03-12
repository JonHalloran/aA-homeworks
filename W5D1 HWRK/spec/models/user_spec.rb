require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of (:email) }
    it { should validate_presence_of (:password_digest) }
    it { should validate_length_of :password_digest
                    .is_at_least(10)
                    .allow_nil}


  end

  describe 'associations' do


  end

  describe 'class methods' do
    before(:each) do
      User.create!(email: 'email', password: 'password')
    end

    describe "#is_password?"
      context 'valid credentials' do
        user = User.find_by(email: 'email')
        expect(user.is_password?('password').to be_true)
      end

      context 'invalid credentials' do
        user = User.find_by(email: 'email')
        expect(user.is_password?('not password').to be_false)
      end
    end

    describe '#reset'
  end

end

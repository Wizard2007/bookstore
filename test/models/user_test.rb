require 'test_helper'

class UserTest < ActiveSupport::TestCase
end

RSpec.describe User, ' testing ' do
  before do
    @user = User.new{first_name: 'Test name',last_name: 'Test LastName'
      , email: 'test@mail.ru', password: 'test password'
      , confirmation: 'test password', is_admin: true}
  end
  subject {@user}
  context '# start testing Card properties' do        
    [:first_name,:last_name,:email,:password,:confirmation,:is_admin].each do |name|
      it "Should respond to #(name.to_s)" {should respond_to(name)}    	
    end
  end    
  context '# start testing Email field:' do
    describe 'Should not be not empty.' do
      before (@user.email = " ")
      it { should_not be_valid }      
    end
    it 'Has a localpart on the left of an @, the domain on the right. Neither the localpart nor the domain can be empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'The localpart can consist of labels separated by dots but it cannot have two successive dots, nor can it start or end with a dot.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Labels consist of a-z, A-Z, 0-9, or one of !#$%&\'*+-/=?^_`{|}~.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Labels must be less than 63 characters.' do
      @user.email = 64*'*'
      it { should_not be_valid }      
    end	
    it 'Labels must not start with a hyphen, end with a hyphen, or contain two successive hyphens.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'The right-most label must be all alphabetic.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
  context '# start testing Password field:' do
    it 'Should be masked.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Minimum 8 letters, at least 1 uppercase, at least 1 lowercase, at least 1 number.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Mustn’t contain spaces inside.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Spaces at the beginning and at the end should be cut off.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
  context '# start testing First Name:' do
    it 'Cannot be not empty' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Must consist of only a-z and A-Z characters without special symbols' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Must be less than 50 characters.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
  context '# start testing Last Name:' do
    it 'Should not be not empty' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Consist of a-z, A-Z only, no special symbols' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Must be less than 50 characters.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
 end

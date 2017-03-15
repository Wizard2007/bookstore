require 'test_helper'

class UserAdressTest < ActiveSupport::TestCase
end

RSpec.describe UserAdress, 'Test UserAdress' do
  subject {UserPhone.new}
  context '# start testing UserAdress properties' do        
    [:adress,:city,:zip,:is_active].each do |name|
      it "Should respond to #(name.to_s)" {should respond_to(name)}
	end
  end
  context '# start testing Address:' do
    it 'Should not be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Consist of a-z, A-Z, 0-9,’,’, ‘-’, ‘ ’ only, no special symbols.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Must be less than 50 characters.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
  context '# start testing City:' do
    it 'Should not be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Consist of a-z, A-Z only, no special symbols.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Must be less than 50 characters.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end

  context '# start testing Zip:' do
    it 'Should not be empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Consist of 0-9 only,’-’ no special symbols.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Max Length should be 10 characters.	' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
end
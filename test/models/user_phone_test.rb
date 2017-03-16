require 'test_helper'

class UserPhoneTest < ActiveSupport::TestCase
end

RSpec.describe UserPhone, 'Test UserPhone' do
  subject {UserPhone.new}
  context '# start testing Card properties' do        
    [:phone,:is_active].each do |name|
      it "Should respond to #(name.to_s)" {should respond_to(name)}
    end
  end  
  context '# start testing Phone:' do
    it 'Should not be empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Plus (+) at the beginning.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'After should contain country code of chosen country in Country drop down list' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Consist of 0-9 only no special symbols.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Must be 15 characters or less.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
end

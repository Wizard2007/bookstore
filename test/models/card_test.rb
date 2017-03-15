require 'test_helper'

class CardTest < ActiveSupport::TestCase 
end

RSpec.describe Card, 'Test Card' do
  subject {Card.new}
  context '# start testing Card properties' do        
    [:number,:name,:mm,:yy,:cvv].each do |name|
      it "Should respond to #(name.to_s)" {should respond_to(name)}
	end
  end
  context '# start testing Card Number:' do
    it 'Should not be empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Can start with 0-9 only' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Consist of 0-9 only.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
  context '# start testing Name on Card:' do
    it 'Should not be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Consist of a-z, A-Z, no special symbols.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Can contain spaces.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Must be less than 50 characters.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
  context '# start testing MM/YY:' do
    it 'Should not be empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Has a month on the left of a slash /, the year on the right.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Month value can be from 01 to 12.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
  context '# start testing CVV:' do
    it 'Should not be empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Should be masked.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Min Length is 3 digits' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Max Length is 4 digits' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
end
require 'test_helper'

class OrderItemTest < ActiveSupport::TestCase
end

RSpec.describe OrderItem, 'Test Card' do
  subject {OrderItem.new}
  context '# start testing OrderItem properties' do        
    [:price,:quantity].each do |name|
      it "Should respond to #(name.to_s)" {should respond_to(name)}
	end
  end
  context 'Test  OrderItem fields:' do        
    it 'Description should be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Price should be more than 0.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Quantity should be more than 0.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end	
  end
end
require 'test_helper'

class OrderTest < ActiveSupport::TestCase
end

RSpec.describe Order, 'Test Order' do
  subject {Order.new}
  context '# start testing Order properties' do        
    [:number,:date,:total].each do |name|
      it "Should respond to #(name.to_s)" {should respond_to(name)}
	end
  end
  context 'Order Field:' do
    it 'Number should be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Total should be more than 0.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end		
  end
end
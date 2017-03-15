require 'test_helper'

class BookTest < ActiveSupport::TestCase
end

RSpec.describe Book, 'OrderItem Book' do
  subject {Book.new}
  context '# start testing Book properties' do        
    [:title,:description,:price,:is_active].each do |name|
      it "Should respond to #(name.to_s)" {should respond_to(name)}
    end
  end
  context 'Test Book properties' do 
    it 'Description should be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Title should be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
end
require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
end

RSpec.describe Category, 'Test Category' do
  subject {Category.new}
  context '# start testing Category properties' do        
    [:title,:description,:is_active].each do |name|
      it "Should respond to #(name.to_s)" {should respond_to(name)}
    end
  end
  context 'Category Field:' do
    it 'Title should be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Description should be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
end
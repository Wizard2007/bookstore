require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
end

RSpec.describe Review, 'Test Review' do
  subject {Review.new}
  context '# start testing Review properties' do        
    [:title,:description,:date].each do |name|
      it "Should respond to #(name.to_s)" {should respond_to(name)}
	end
  end
  context '# start testing Review’s Title field:' do
    it 'Should not be not empty,' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Consist of a-z, A-Z, 0-9, or one of !#$%&\'*+-/=?^_`{|}~.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Must be less than 80 characters.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
  context '# start testing Review’s Text box:' do
    it 'Cannot be not empty,' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Consist of a-z, A-Z, 0-9, or one of !#$%&\'*+-/=?^_`{|}~.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Must be less than 500 characters.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
end
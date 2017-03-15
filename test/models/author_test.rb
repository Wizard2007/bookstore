require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
end

RSpec.describe Author, 'Test Author' do
  subject {Author.new}
  context '# start testing Author properties' do
    [:first_name,:second_name,:description,:is_active].each do |name|
      it "Should respond to #(name.to_s)" {should respond_to(name)}
    end
  end
  context 'Author Field:' do
    it 'First_name should be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Second_name should be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
    it 'Description should be not empty.' do
      pending "add some examples to (or delete) #{__FILE__}"
    end
  end
end

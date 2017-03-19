require '../test_helper'

class BookTest < ActiveSupport::TestCase
end

RSpec.describe Book, ' testing ' do
  
  before do
    @book = Book.new(description: 'test description', title: 'test title')
  end 
  subject {@book}
  context '# start testing Book properties' do        
    [:title,:description,:price,:is_active].each do |name|
      it {should respond_to(name)}
    end
    it {should_not be_valid}
  end
  
  describe 'Description should be not empty.' do
    before { @book.description = ''}
    it {should_not be_valid} 
  end

  describe  'Title should be not empty.' do
    before{@book.title = ''}
    it {should_not be_valid}
  end
end

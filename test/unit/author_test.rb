require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  def test_create_author
    author = Author.new(:name => 'Maurice Sendak')
    assert author.save
  end

  def test_retrieving_without_fixtures
    name = 'Maurice Sendak'
    Author.create(:name => name)
    assert Author.find_by_name(name)
  end


  fixtures :authors
  
  def test_retrieving_with_fixtures
    assert_nothing_raised do 
      Author.find(authors(:maurice_sendak).id)
    end
  end

end

class Author < ActiveRecord::Base
  has_many :roles
  has_many :books, :through => :roles
end

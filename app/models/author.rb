class Author < ActiveRecord::Base
  has_many :authored_books
  has_many :books, :through => :authored_books
end

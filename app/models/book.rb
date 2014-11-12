class Book < ActiveRecord::Base
  has_many :authored_books
  has_many :authors, :through => :authored_books
end

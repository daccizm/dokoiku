class CategoriesGenre < ActiveRecord::Base
  belongs_to :category
  belongs_to :genre
  # attr_accessible :title, :body
end

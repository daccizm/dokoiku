class Category < ActiveRecord::Base
  has_many :categories_genres
  has_many :genres, :through=>:categories_genres

  attr_accessible :name
end

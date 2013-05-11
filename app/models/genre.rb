class Genre < ActiveRecord::Base
  has_one :categories_genres
  has_one :category, :through=>:categories_genres

  has_many :genres_shops
  has_many :shops, :through=>:genres_shops

  attr_accessible :name
end

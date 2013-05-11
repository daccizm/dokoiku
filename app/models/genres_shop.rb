class GenresShop < ActiveRecord::Base
  belongs_to :genre
  belongs_to :shop
  # attr_accessible :title, :body
end

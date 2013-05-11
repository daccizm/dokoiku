class Shop < ActiveRecord::Base
  has_one :genres_shops
  has_one :genre, :through=>:genres_shops
	
  attr_accessible :fax, :kana_name, :name, :tel
end

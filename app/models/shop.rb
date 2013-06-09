class Shop < ActiveRecord::Base
  has_one :genres_shop
  has_one :genre, :through=>:genres_shop
  has_many :notices
	
  attr_accessible :fax, :kana_name, :name, :tel
end

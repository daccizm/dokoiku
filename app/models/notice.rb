class Notice < ActiveRecord::Base
  belongs_to :shop
  attr_accessible :content
end

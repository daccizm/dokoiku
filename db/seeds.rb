# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
Genre.delete_all
Shop.delete_all

category = Category.create( name: 'グルメ' )
genre = category.genres.create( name: 'ラーメン・中華' )
category.genres.create( name: '居酒屋' )
category.genres.create( name: '和食' )
category.genres.create( name: '洋食' )

genre.shops.create( name: 'らー麺　塩や', tel: '0852-26-7020', fax: '' )
genre.shops.create( name: 'ひばり', tel: '0852-21-5062', fax: '' )



category = Category.where(name: '美容・健康').first
unless category
  category = Category.create( name: '美容・健康' )
end

category = Category.where(name: '遊ぶ・趣味').first
unless category
  category = Category.create( name: '遊ぶ・趣味' )
end

category = Category.where(name: '宿泊・ホテル').first
unless category
  category = Category.create( name: '宿泊・ホテル' )
end

category = Category.where(name: 'ショッピング').first
unless category
  category = Category.create( name: 'ショッピング' )
end

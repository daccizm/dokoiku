# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = Category.where(name: 'グルメ').first
unless category
  category = Category.create( name: 'グルメ' )
  # category.genres.create( name: 'ラーメン・中華' )
  # category.genres.create( name: '居酒屋' )
  # category.genres.create( name: '和食' )
  # category.genres.create( name: '洋食' )
end

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

class CreateGenresShops < ActiveRecord::Migration
  def change
    create_table :genres_shops, :id=>false do |t|
      t.references :genre
      t.references :shop
    end
    add_index :genres_shops, :genre_id
    add_index :genres_shops, :shop_id
  end
end

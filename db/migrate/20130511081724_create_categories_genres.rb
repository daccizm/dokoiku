class CreateCategoriesGenres < ActiveRecord::Migration
  def change
    create_table :categories_genres, :id=>false do |t|
      t.references :category
      t.references :genre
    end
    add_index :categories_genres, :category_id
    add_index :categories_genres, :genre_id
  end
end

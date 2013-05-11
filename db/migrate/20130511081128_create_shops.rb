class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :kana_name
      t.string :tel
      t.string :fax

      t.timestamps
    end
  end
end

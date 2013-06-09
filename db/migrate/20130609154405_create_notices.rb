class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :content
      t.references :shop

      t.timestamps
    end
    add_index :notices, :shop_id
  end
end

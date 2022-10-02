class CreateFavorits < ActiveRecord::Migration[7.0]
  def change
    create_table :favorits do |t|
      t.integer :user_id
      t.integer :phote_id

      t.timestamps
    end
  end
end

class CreatePhotes < ActiveRecord::Migration[7.0]
  def change
    create_table :photes do |t|
      t.string :title
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :description
      t.date :start_date
      t.date :end_date
      t.decimal :fee
      t.string :location

      t.timestamps
    end
  end
end

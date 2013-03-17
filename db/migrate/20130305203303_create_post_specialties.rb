class CreatePostSpecialties < ActiveRecord::Migration
  def change
    create_table :post_specialties do |t|
      t.integer :post_id
      t.integer :specialty_id
      t.string :post_specialty_name

      t.timestamps
    end
  end
end

class CreateUserSpecialties < ActiveRecord::Migration
  def change
    create_table :user_specialties do |t|
      t.integer :specialty_id
      t.integer :user_id
      t.string :user_specialty_name

      t.timestamps
    end
  end
end

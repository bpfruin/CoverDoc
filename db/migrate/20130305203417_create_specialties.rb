class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :field

      t.timestamps
    end
  end
end

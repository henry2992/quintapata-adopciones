class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :photos
      t.integer :race

      t.timestamps
    end
  end
end

class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :location
      t.date :found_on
      t.string :species
      t.string :name

      t.timestamps
    end
  end
end

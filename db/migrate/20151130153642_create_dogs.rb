class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :favorite_toy
      t.date :date_of_birth
    end
  end
end

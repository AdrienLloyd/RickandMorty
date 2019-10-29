class CreateFavouriteFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :favourite_foods do |t|
      t.string :name
      t.string :description
      t.references :character, null: false, foreigh_key: true

      t.timestamps
    end
  end
end

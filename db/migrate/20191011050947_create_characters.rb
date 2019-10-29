# frozen_string_literal: true

class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :status
      t.string :species
      t.string :origin
      t.string :image
      t.references :episode, null: false, foreign_key: true

      t.timestamps
    end
  end
end

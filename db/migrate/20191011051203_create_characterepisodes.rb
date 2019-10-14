class CreateCharacterepisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :characterepisodes do |t|
      t.string :character
      t.string :episode

      t.timestamps
    end
  end
end

class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :name
      t.string :air_date
      t.string :episode_name
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end

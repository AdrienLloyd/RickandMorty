class RemoveEpisodeFromCharacters < ActiveRecord::Migration[6.0]
  def change
    remove_reference :characters, :episode, null: false, foreign_key: true
  end
end

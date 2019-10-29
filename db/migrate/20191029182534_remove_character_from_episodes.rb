class RemoveCharacterFromEpisodes < ActiveRecord::Migration[6.0]
  def change
    remove_reference :episodes, :character, null: false, foreign_key: true
  end
end

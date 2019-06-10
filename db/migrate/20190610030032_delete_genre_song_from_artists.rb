class DeleteGenreSongFromArtists < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :genre_id, :integer
    remove_column :artists, :song_id, :integer
  end
end

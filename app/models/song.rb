class Song < ActiveRecord::Base
  #Song can only have one Artist
  belongs_to :artist

  #Can have many genres
  has_many :song_genres
  has_many :genres, through: :song_genres

  def slug
    name.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug)
    Song.all.find{|song| song.slug == slug}
  end
end

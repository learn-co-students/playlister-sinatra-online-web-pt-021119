class Genre < ActiveRecord::Base
  # Genre has many genres
  has_many :song_genres
  # Has many Songs through song_genres
  has_many :songs, through: :song_genres
  # Has many Artists through songs
  has_many :artists, through: :songs

  def slug
    name.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug)
    Genre.all.find{|genre| genre.slug == slug}
  end
end

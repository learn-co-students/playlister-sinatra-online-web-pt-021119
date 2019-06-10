class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def slug
    split_name = self.name.downcase.split(" ")
    slug_name = split_name.join("-")
  end

  def self.find_by_slug(slug)
    slug_name = slug.split("-").collect do |word|
      word.capitalize
    end.join(" ")
    self.find_by(name: slug_name)
  end

end

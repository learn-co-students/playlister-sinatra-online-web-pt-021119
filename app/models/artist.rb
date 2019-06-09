class Artist < ActiveRecord::Base
  #Artist can have many songs and genres through songs
  has_many :songs
  has_many :genres, through: :songs

  def slug
    name.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug)
    Artist.all.find{|artist| artist.slug == slug}
  end
end

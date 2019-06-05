class Genre < ActiveRecord::Base
	include AppHelper::Inst
	extend AppHelper::Clas

	has_and_belongs_to_many :songs, join_table: "song_genres"
	has_many :artists, through: :songs
end
class Song < ActiveRecord::Base
	include AppHelper::Inst
	extend AppHelper::Clas

	belongs_to :artist
	has_and_belongs_to_many :genres, join_table: "song_genres"

end
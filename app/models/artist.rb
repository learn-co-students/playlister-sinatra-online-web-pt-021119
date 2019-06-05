class Artist < ActiveRecord::Base
	include AppHelper::Inst
	extend AppHelper::Clas

	has_many :songs
	has_many :genres, through: :songs

end
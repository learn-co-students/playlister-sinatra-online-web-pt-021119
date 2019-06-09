class SongGenre < ActiveRecord::Base
  #many to many relationship (i.e. join table)
  belongs_to :song
  belongs_to :genre
end 

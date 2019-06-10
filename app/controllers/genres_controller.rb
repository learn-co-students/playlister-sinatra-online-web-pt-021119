require 'rack-flash'

class GenresController < ApplicationController
  #use Rack::Flash

  get '/genres' do
    @genres = Genre.all
    :'/genres/index'
  end

end

require 'rack-flash'

class GenresController < ApplicationController
  #use Rack::Flash

  get '/genres' do
    @genres = Genre.all
    erb :'/genres/index'
  end

  get '/genres/slug' do
    erb :'/genres/show'
  end

end

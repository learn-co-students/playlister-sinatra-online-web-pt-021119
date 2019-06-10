require 'rack-flash'

class ArtistsController < ApplicationController
  use Rack::Flash

  get '/artists' do
    erb :'/artists/index'
  end
end

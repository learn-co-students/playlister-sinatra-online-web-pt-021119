require 'rack-flash'

class GenresController < ApplicationController
  use Rack::Flash

  get '/genres' do
    :'/genres/index'
  end

end

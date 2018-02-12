require 'sinatra/base'
require_relative './lib/link'

class BookmarkManager < Sinatra::Base

  enable :sessions

  get '/' do
    @links = Link.all
    erb :index
  end

  run! if app_file == $0

end
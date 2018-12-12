class SongsController < ApplicationController
# set :views, './views/songs'
  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :'/songs/show'
  end



end

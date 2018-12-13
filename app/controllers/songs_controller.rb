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

  get '/songs/new' do
    erb :'/songs/new'
  end

  get '/songs/:id/edit' do
    @song = Song.find(params[:id])
    # @genres = Genre.all
    erb :'/songs/edit'
  end

  patch '/songs/:id' do
    @song = Song.find(params[:id])
    redirect "/songs/#{@song.id}"
  end




end

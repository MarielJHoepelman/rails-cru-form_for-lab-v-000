class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update]

 def new
   @song = Song.new
   @artists = Artist.all
   @genres = Genre.all
 end

 def create
   @song = Song.create(post_params)
   redirect_to song_path(@song)
 end

 def show
 end

 def edit
 end

 def update
   @song = Song.update(post_params)
   redirect_to song_path(@song)
 end

 private

 def find_song
    @song = Song.find(params[:id])
 end

 def post_params
   params.require(:song).permit(:name)
 end
end

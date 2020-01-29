class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update]

 def new
   @song = Song.new
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
   @genre = Genre.update(post_params)
   redirect_to genre_path(@genre)
 end

 private

 def find_genre
    @genre = Genre.find(params[:id])
 end

 def post_params
   params.require(:genre).permit(:name)
 end
end

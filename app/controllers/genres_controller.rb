class GenresController < ApplicationController
  # before_action :find_artist, only: [:show, :edit, :update]

 def new
   @genre = Genre.new
 end

 def create
   @genre = Genre.create(name: params[:genre][:name])
   redirect_to artist_path(@genre)
 end


 def show
   @genre = Genre.find(params[:id])
 end
 #
 # def edit
 # end
 #
 # def update
 #   @artist.update(post_params)
 #   redirect_to artist_path(@artist)
 # end

 private

 # def find_artist
 #   @artist = Artist.find(params[:id])
 # end
 #
 # def post_params
 #   params.require(:artist).permit(:name, :bio)
 # end
end

class ArtistsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update]

 def new
   @artist = Artist.new
 end

 def create
   @artist = Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
   redirect_to artist_path(@artist)
 end


 def show
   @artist = Artist.find(params[:id])
 end

 def edit
   @artist = Artist.find(params[:id])
 end

 def update
   @artist = Artist.find(params[:id])
   @artist.update(name: params[:artist][:name], bio: params[:artist][:bio])
   redirect_to artist_path(@artist)
 end

 private

 def find_artist
   @artist = Artist.find(params[:id])
 end

 def post_params
   params.require(:artist).permit(:name, :bio)
 end
end

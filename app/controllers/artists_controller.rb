class ArtistsController < ApplicationController
  # before_action :find_student, only: [:show, :edit, :update]

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
 #
 # def update
 #   @student.update(post_params)
 #   redirect_to student_path(@student)
 # end

 private
 #
 # def find_student
 #   @student = Student.find(params[:id])
 # end
 #
 # def post_params
 #   params.require(:student).permit(:first_name, :last_name)
 # end
end

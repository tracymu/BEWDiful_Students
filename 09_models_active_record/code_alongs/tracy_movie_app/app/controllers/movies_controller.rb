class MoviesController < ApplicationController
  before_action :find_movie, :only => [:show, :edit, :update, :destroy] 

  # before_action :authenticate_user!, :only => [:new, :edit]

  def index
    @movies = Movie.all
  end


  def search
    @movies = Movie.where("title like?", "%#{params[:search]}%")

  end



  
  def new
    @movie = Movie.new
  end

 
  def create
      @movie = Movie.new permitted_attributes
  
      if @movie.save
        redirect_to movies_path
      else
        render 'new'
      end
  end


  def update
## What is this update_attributes method????
    if @movie.update_attributes permitted_attributes
      redirect_to movies_path
    else
      render 'edit'
    end
  end

  def destroy
    @movie.destroy
    redirect_to root_path
  end 


  protected

  def permitted_attributes
    params.require(:movie).permit(:title, :description, :year_released)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end



end
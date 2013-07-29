class ShirtsController < ApplicationController

  before_action :find_shirt, :only => [:edit, :update]

  def index
<<<<<<< HEAD

    @shirts = Shirt.all

  end


  def search
    @shirts = Shirt.where("name like?", "%#{params[:search]}%")
  end

  def new
    #create a new instance of a shirt object so that you can use it in the view, and in the view you will be populating the fields about that.
    @shirt = Shirt.new

  end


  def create

    @shirt = Shirt.new permitted_attributes

=======
    @shirts = Shirt.all
  end
  
  def search
    #render :text => params
    @shirts = Shirt.where("name like ?", "%#{params[:search]}%")
  end
  
  def new
    @shirt = Shirt.new
  end
  
  def create
    # render :text => params
    @shirt = Shirt.new permitted_attributes
>>>>>>> teacher/master
    if @shirt.save
      redirect_to shirts_path
    else
      render 'new'
<<<<<<< HEAD

    end

  end




  def update

=======
    end
  end
  
  def update
>>>>>>> teacher/master
    if @shirt.update_attributes permitted_attributes
      redirect_to shirts_path
    else
      render 'edit'
    end
<<<<<<< HEAD

  end

  protected

  def find_shirt
    @shirt = Shirt.find(params[:id])
  end


  def permitted_attributes
    params.require(:shirt).permit(:name, :description)
  end

=======
  end
  
  protected
  
  def find_shirt
    @shirt = Shirt.find(params[:id])
  end
  
  def permitted_attributes
    params.require(:shirt).permit(:name, :description)
  end
>>>>>>> teacher/master
end
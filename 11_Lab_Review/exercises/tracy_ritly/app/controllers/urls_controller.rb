class UrlsController < ApplicationController

  def index
    @urls = Url.all    
    @url = Url.new
  end


  def search
      # @urls= Url.all
      @urls = Url.where("name like ?", "%#{params[:search]}%")
  end


  def new
    @url = Url.new
    @urls = Url.all
  end


  def create

    @url = Url.new permitted_attributes
    @url.generate_hash

    if @url.save
      redirect_to url_path(@url)
    else
      render 'new'
    end
  end


  def show
    @url = Url.find(params[:id])
  end


####must stop and understand this and the route about it#####
def redirect
  @url = Url.where(:hash_code => params[:hash_code]).first
  ### That line above obviously has some problems.
  redirect_to @url.long_link 

end


protected

def permitted_attributes
  params.require(:url).permit(:name)
end


end

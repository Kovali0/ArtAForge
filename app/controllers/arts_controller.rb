class ArtsController < ApplicationController

  def index
    @arts = Art.all
    @user_arts = current_user.arts.all
    @newest_art = Art.order("created_at").last
  end

  def new
    @art = Art.new
  end

  def create
    #@art = Art.new(art_params)
    @art = current_user.arts.build(art_params)
    @art.image.attach(params[:art][:image])
    if @art.save
      flash[:notice] = "Article was successfully created"
      redirect_to art_path(@art)
    else
      render 'new'
    end
  end

  def show
    @art = Art.find(params[:id])
  end

  def mygallery
    @user_arts = current_user.arts.all
  end

  private
    def art_params
      params.require(:art).permit(:title, :content, :author, :image)
    end

end

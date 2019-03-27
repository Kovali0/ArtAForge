class ArtsController < ApplicationController

  def index
    @arts = Art.all
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
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

  private
    def art_params
      params.require(:art).permit(:title, :content, :author, uploads: [])
    end

end

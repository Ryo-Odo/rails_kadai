class ChuntersController < ApplicationController
  def index
    @chunters = Chunter.all
  end
  def new
    @chunter = Chunter.new
  end
  def create
    Chunter.create(chunter_params)
    redirect_to new_chunter_path
  end
  def show
    @chunter = Chunter.find(params[:id])
  end
  private
  def chunter_params
    params.require(:chunter).permit(:content)
  end
end

class ChuntersController < ApplicationController
  def index
    @chunters = Chunter.all
  end
  def new
    @chunter = Chunter.new
  end
  def create
    @chunter = Chunter.create(chunter_params)
    if @chunter.save
      redirect_to new_chunter_path, notice: "つぶやきを投稿しました"
    else
      render :new
    end
  end
  def show
    @chunter = Chunter.find(params[:id])
  end
  private
  def chunter_params
    params.require(:chunter).permit(:content)
  end
end

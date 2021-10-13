class ChuntersController < ApplicationController
  before_action :set_blog, only: [:edit, :update]
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
  # def show
  #   @chunter = Chunter.find(params[:id])
  # end
  def edit
    set_blog
  end
  def update
    set_blog
    if @chunter.update(chunter_params)
      redirect_to chunters_path, notice: "つぶやきを編集しました！"
    else
      render :edit
    end
  end
  private
  def chunter_params
    params.require(:chunter).permit(:content)
  end
  def set_blog
    @chunter = Chunter.find(params[:id])
  end
end

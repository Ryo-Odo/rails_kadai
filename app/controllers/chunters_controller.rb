class ChuntersController < ApplicationController
  def index
  end
  def new
    @chunter = Chunter.new
  end
  def create
    Chunter.create(content: params[:chunter][:content])
    redirect_to new_chunter_path
  end
end

class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @movies = Movie.all
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end

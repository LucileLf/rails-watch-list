class ListsController < ApplicationController

  def home
  end

  def index
    @lists = List.all
  end

  def def_movies
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = Bookmark.where(list: @list)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end

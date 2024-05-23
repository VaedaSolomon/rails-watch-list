class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    @bookmark.save

    redirect_to list_path(@bookmark)
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end

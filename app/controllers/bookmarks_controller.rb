class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new

  end

  def create
    @bookmark = Bookmark.new(params[:bookmark])

    if @bookmark.save
      redirect_to(@bookmark, :notice => 'Bookmark was successfully created.')
    else
      render :action => "new"
    end
  end

  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

end

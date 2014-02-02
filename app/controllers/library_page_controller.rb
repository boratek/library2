class LibraryPageController < ApplicationController
  def home
   @q = Author.search(params[:q])
   @authors = @q.result(distinct: true)

    @q = Book.search(params[:q])
    @books = @q.result(distinct: true)
  end


end

class SearchController < ApplicationController
  def index
    @count = SearchFacade.count_by_nation(params[:nation])
    @characters = SearchFacade.list_by_nation(params[:nation])
  end
end

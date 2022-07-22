class SearchController < ApplicationController
  def index
    @nation = SearchFacade.parse_nation(params[:nation])
    @count = SearchFacade.count_by_nation(@nation)
    @characters = SearchFacade.list_by_nation(@nation)
  end
end

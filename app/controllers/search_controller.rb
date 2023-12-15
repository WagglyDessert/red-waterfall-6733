class SearchController < ApplicationController
  def index
    nation =  params[:nation]
    @facade = SearchFacade.new.nation_members(nation)
  end
end
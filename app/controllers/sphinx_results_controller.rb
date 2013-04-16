class SphinxResultsController < ActionController::Base
  def index
    @results = Goof.search params[:search]
  end
end

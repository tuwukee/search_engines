class ResultsController < ApplicationController
  def index
    if params[:search].present?
      @results = Goof::ThinkingSphinx.search params[:search],
                              :max_matches => 15,
                              :per_page    => 15

      standart_search = Sunspot.search(Goof) do
        fulltext params[:search]
        paginate :page => 1, :per_page => 15
      end

      @solr_time = standart_search.query_time / 1000.0
      @solr_results = standart_search.results

      @pstg_results = Goof.text_search params[:search]

      @mysql_results = MyGoof.find(:all, :conditions => ["match(description,goof_type) against (? IN BOOLEAN MODE)", params[:search]]).first 15
    end
  end
end

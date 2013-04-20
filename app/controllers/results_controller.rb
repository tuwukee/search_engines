class ResultsController < ApplicationController
  def index
    if params[:search].present?
      @results = Goof::ThinkingSphinx.search params[:search]
      @excerpter = ThinkingSphinx::Excerpter.new 'goof_core', params[:search], {
        :before_match    => '<span class="match" style="background-color: yellowgreen">',
        :after_match     => '</span>',
        :chunk_separator => ' &#8230; '
      }

      standart_search = Sunspot.search(Goof) do
        fulltext params[:search]
      end

      @solr_time = standart_search.query_time / 1000.0
      @solr_results = standart_search.results

      @pstg_results = Goof.text_search params[:search]
    end
  end
end

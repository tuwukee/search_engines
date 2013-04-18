class ResultsController < ApplicationController
  def index
    if params[:search].present?
      @results = Goof::ThinkingSphinx.search params[:search]
      @excerpter = ThinkingSphinx::Excerpter.new 'goof_core', params[:search], {
        :before_match    => '<span class="match" style="background-color: yellowgreen">',
        :after_match     => '</span>',
        :chunk_separator => ' &#8230; '
      }

      standard_search = Goof::Sunspot.search(Goof) do
        fulltext params[:search]
      end
      @solr_results = standard_search.results
    end
  end
end

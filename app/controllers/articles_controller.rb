class ArticlesController < ApplicationController
  def index
    @display_name = request.subdomain
    #@display_name = request.original_fullpath
    #@display_name = request.original_url
  end
end

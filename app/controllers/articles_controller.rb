class ArticlesController < ApplicationController
  def index
    @display_name = request.subdomain
  end
end

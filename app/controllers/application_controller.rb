class ApplicationController < ActionController::Base
    around_action :determine_database_connection

    private
    
    def determine_database_connection
        slug = request.subdomain.split('.')[0]
        ActiveRecord::Base.connected_to(role: :writing, shard: slug.to_sym) do
            yield
        end
    end  
end

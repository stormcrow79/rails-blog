class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  slug = request.subdomain.split('.')[0]
  ActiveRecord::Base.connected_to(role: :writing, shard: slug.to_sym)
end

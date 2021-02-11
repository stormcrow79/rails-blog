class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  connects_to shards: {
    default: { writing: :primary, reading: :primary },
    bravo: { writing: :bravo, reading: :bravo },
    charlie: { writing: :charlie, reading: :charlie }
  }
end

class Forum < ApplicationRecord
  belongs_to :developer
  belongs_to :community
end

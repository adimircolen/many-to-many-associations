class Repo < ApplicationRecord
  belongs_to :developer
  belongs_to :community
end

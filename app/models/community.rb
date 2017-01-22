class Community < ApplicationRecord
  has_many :events
  has_many :forums
  has_many :repos
  has_many :hostings, through: :events, source: :developer
  has_many :discussions, through: :forums, source: :developer
  has_many :contributions, through: :repos, source: :developer
end

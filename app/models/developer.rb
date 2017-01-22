class Developer < ApplicationRecord
  has_many :events
  has_many :forums
  has_many :repos
  has_many :appearances, through: :events, source: :community
  has_many :postings, through: :forums, source: :community
  has_many :contributions, through: :repos, source: :community
end

#The one line lets the database have tags for its entries
class CommunityResource < ApplicationRecord
  acts_as_taggable_on :tags
end

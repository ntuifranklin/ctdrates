class Pod < ApplicationRecord
  belongs_to :city
  has_many :rateitems
end

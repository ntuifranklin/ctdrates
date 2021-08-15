class Rateitem < ApplicationRecord
  belongs_to :tag
  belongs_to :category
  belongs_to :shipline
  belongs_to :pol
  belongs_to :pod
end

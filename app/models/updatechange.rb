class Updatechange < ApplicationRecord
  belongs_to :tag
  belongs_to :admin
  belongs_to :category
  belongs_to :shipline
  belongs_to :pol
  belongs_to :pod
  belongs_to :rateitem
end

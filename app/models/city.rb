class City < ApplicationRecord
	belongs_to :state
        belongs_to :country
        has_many :pols
        has_many :pods
end

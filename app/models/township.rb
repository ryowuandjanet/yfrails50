class Township < ApplicationRecord
	belongs_to :country
	has_many :yfcases
end

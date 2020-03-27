class Country < ApplicationRecord
	has_many :yfcases
	has_many :township
end

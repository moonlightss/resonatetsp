class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :tutorial_centre
end

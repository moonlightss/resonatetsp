class TutorialCentre < ActiveRecord::Base
	mount_uploader :image, ImageUploader
end

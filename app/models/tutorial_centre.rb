class TutorialCentre < ActiveRecord::Base
	mount_uploader :image, ImageUploader

	searchkick

	has_many :reviews

	validates :name, :address, :phone, :website, :image, presence: true
	validates :phone, format: { with: /\A\d{3}-\d{4}-\d{4}\z/,
    message: "must be in the format 852-1234-5678" }
     validates :website, format: { with: /\Ahttps?:\/\/.*\z/,
    message: "must start with http:// or https://" }

    belongs_to :category

    belongs_to :dse

    acts_as_taggable # Alias for acts_as_taggable_on :tags

  
  	


end

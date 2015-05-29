class Revenue < ActiveRecord::Base
	belongs_to :category
	has_many :ingredients, dependent: :delete_all
	has_many :galleries,   dependent: :delete_all	  
	
	validates :name, presence: true
	validates :cover, presence: true

	has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

	def name_category
		if self.category.blank?
		   "null"
		else
			self.category.name
		end	
	end	

end

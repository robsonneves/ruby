class Gallery < ActiveRecord::Base
  belongs_to :revenue
  has_many :photos, dependent: :delete_all
end

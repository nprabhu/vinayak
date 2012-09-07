class Gallery < ActiveRecord::Base
  belongs_to :user
  has_many :photos, :as => :imageable
  accepts_nested_attributes_for :photos
  attr_accessible :name, :photos_attributes, :user_id
  validates :name, :presence => true,:uniqueness => true

end

class Profile < ActiveRecord::Base
  belongs_to :user
  has_one :photo, :as => :imageable
  accepts_nested_attributes_for :photo
  attr_accessible :first_name, :gender, :last_name, :location, :phone_number, :user_id, :photo_attributes
end

class Photo < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :imageable, :polymorphic => true
  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end

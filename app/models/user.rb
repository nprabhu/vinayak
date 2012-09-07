class User < ActiveRecord::Base
  has_one:profile
  has_many :galleries
  accepts_nested_attributes_for :profile
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, :timeoutable and :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:profile_attributes
  # attr_accessible :title, :body

  before_create :create_profile

  def create_profile
    build_profile
  end

end

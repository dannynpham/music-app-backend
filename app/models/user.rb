class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable, :recoverable,
          :rememberable, :trackable, :validatable, :omniauthable#, :confirmable
  include DeviseTokenAuth::Concerns::User
  has_many :friends, :class_name => 'UserFriend'
  has_many :playlists
end

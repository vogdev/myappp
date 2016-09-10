class User < ActiveRecord::Base
has_many :posts, dependent: :destroy
devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
validates  :username, presence: true
mount_uploader :avatar, AvatarUploader
end

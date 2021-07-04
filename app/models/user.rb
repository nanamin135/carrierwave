class User < ApplicationRecord
  has_many :articles
  #CarrierWave
  mount_uploader :avatar_path, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

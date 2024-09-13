class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  # Include default devise modules. Others available are:
  # :confirmable, :rememberable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :validatable, :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :posts
  has_many :likes
  has_one_attached :avatar

  def avatar_url
    if self.avatar&.attachment
      if Rails.env.development?
        Rails.application.routes.url_helpers.rails_blob_url(self.avatar, only_path: true)
      else
        self.avatar_url = self.avatar&.service_url&.split("?")&.first
      end
    end
  end
end

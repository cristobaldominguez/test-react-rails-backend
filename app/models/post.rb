class Post < ApplicationRecord
  belongs_to :user
  has_many_attached :images

  validates :images, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

  def images_url
    self.images.to_a.map { |img| Rails.application.routes.url_helpers.rails_blob_url(img, only_path: true) }
  end

  def user_detail
    UserSerializer.new(self.user).serializable_hash[:data][:attributes]
  end
end

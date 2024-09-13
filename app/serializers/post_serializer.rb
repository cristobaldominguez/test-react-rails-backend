class PostSerializer
  include JSONAPI::Serializer
  attributes :id, :body

  attribute :images do |object, _params|
    object.images_url
  end

  attribute :user do |object, _params|
    object.user_detail
  end

  attribute :liked do |object, _params|
    !!object.likes.find_by(user: CurrentUser.data)
  end
end

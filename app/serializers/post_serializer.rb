class PostSerializer
  include JSONAPI::Serializer
  attributes :id, :body

  attribute :images do |object, _params|
    object.images_url
  end

  attribute :user do |object, _params|
    object.user_detail
  end
end

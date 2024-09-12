class PostSerializer
  include JSONAPI::Serializer
  attributes :body, :images_url
end
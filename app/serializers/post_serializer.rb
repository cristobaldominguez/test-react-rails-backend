class PostSerializer
  include JSONAPI::Serializer
  attributes :id, :body, :images_url
end
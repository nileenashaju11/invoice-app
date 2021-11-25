class SerializableUser < JSONAPI::Serializable::Resource
  type 'users'

    #attributes :id, :email, :created_at
      link :self, :url


  # link :self do
  #   @url_helpers.api_v1_project_url(@object.id)
  # end
end
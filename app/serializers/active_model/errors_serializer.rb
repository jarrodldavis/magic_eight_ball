class ActiveModel::ErrorsSerializer < ActiveModel::Serializer
  self.root = false

  attributes :errors

  def errors
    object.messages
  end
end

class Api::V1::ResponseSerializer < ActiveModel::Serializer
  attributes :id, :text, :default
end

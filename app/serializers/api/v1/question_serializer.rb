class Api::V1::QuestionSerializer < ActiveModel::Serializer
  attributes :id, :text
  has_one :response
  has_one :user
end

class Api::V1::QuestionSerializer < ApplicationSerializer
  attributes :id, :text
  has_one :response
  has_one :user
end

class Api::V1::ResponseSerializer < ApplicationSerializer
  attributes :id, :text, :default, :total_questions
  def total_questions
    object.questions.count
  end
end

class Api::V1::Question < ActiveRecord::Base
  belongs_to :response
  belongs_to :user

  validates :text, presence: true
  validates :response, presence: true
end

class Api::V1::Question < ActiveRecord::Base
  belongs_to :response
  belongs_to :user
end

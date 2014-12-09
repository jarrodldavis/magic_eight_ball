class Api::V1::Response < ActiveRecord::Base
  has_many :questions
end

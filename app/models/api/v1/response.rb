class Api::V1::Response < ActiveRecord::Base
  has_many :questions

  validates :text, presence: true
end

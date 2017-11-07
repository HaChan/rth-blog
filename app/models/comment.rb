class Comment < ApplicationRecord
  include Postable

  UPDATE_PARAMS = %i[body]

  belongs_to :post

  validates :body, presence: true
end

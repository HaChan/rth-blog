class Comment < ApplicationRecord
  include Postable

  UPDATE_PARAMS = %i[body]
  PER_PAGE = 10

  belongs_to :post

  validates :body, presence: true
end

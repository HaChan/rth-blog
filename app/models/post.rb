class Post < ApplicationRecord
  include Postable

  UPDATE_PARAMS = %i[title body]

  has_many :comments

  validates :title, :body, presence: true

  def shorten_body
    body.truncate(100)
  end
end

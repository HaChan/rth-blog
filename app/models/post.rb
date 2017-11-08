class Post < ApplicationRecord
  include Postable

  UPDATE_PARAMS = %i[title body]
  PER_PAGE = 10

  has_many :comments

  validates :title, :body, presence: true

  def shorten_body
    body.truncate(100)
  end

  def api_attributes
    {
      title: title,
      body: body
    }
  end
end

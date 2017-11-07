class Post < ApplicationRecord
  UPDATE_PARAMS = [:title, :body]
  belongs_to :user

  delegate :email, to: :user, prefix: true, allow_nil: true

  def created_as_word
    created_at.to_formatted_s(:long)
  end

  def shorten_body
    body.truncate(100)
  end
end

module Postable
  extend ActiveSupport::Concern

  included do
    belongs_to :user

    scope :lastest, ->{order(created_at: :desc)}

    delegate :name, to: :user, prefix: true, allow_nil: true
  end
end
